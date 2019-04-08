---
to: shipitfile.js
unless_exists: true
---
const { readFileSync } = require('fs')
const { join } = require('path')
const shipitDeploy = require('shipit-deploy') // eslint-disable-line
const { prompt } = require('enquirer') // eslint-disable-line

const username = 'app'
const deployTo = '~/app'
const repositoryUrl = '<%= repositoryUrl =>'
const serverIp = process.env.SERVER_IP

module.exports = shipit => {
  shipitDeploy(shipit)

  shipit.initConfig({
    default: {
      deployTo,
      repositoryUrl,
      ignores: ['_templates']
    },
    setup: {
      servers: `root@${serverIp}`
    },
    staging: {
      servers: `${username}@${serverIp}`
    }
  })

  shipit.blTask('build', async () => {
    await shipit.remote(`cd ${shipit.releasePath} && npm install`)
    await shipit.remote(`cd ${shipit.releasePath} && npm run build`)
  })

  shipit.blTask('restart', async () => {
    // given the current user can execute without password
    await shipit.remote('sudo systemctl restart app', { tty: true })
  })

  shipit.on('updated', () => {
    shipit.start('build')
  })

  shipit.on('published', () => {
    shipit.start('restart')
  })

  shipit.blTask('setup', async () => {
    const { password, sshKeyPath } = await prompt([
      {
        type: 'input',
        name: 'sshKeyPath',
        default: join(process.env.HOME, '.ssh/id_rsa.pub'),
        message: 'Public SSH Key Path'
      },
      {
        type: 'password',
        name: 'password',
        message: 'Thee Password'
      }
    ])

    const sshKey = readFileSync(sshKeyPath, 'utf8')

    // copy ssh key to server, this will prevent the password prompt for future commands
    await shipit.local(`ssh-copy-id -i ${sshKeyPath} root@${serverIp}`)

    const commands = [
      // upgrade server software and install additional
      'curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -',
      'apt update',
      'apt upgrade -y',
      'apt autoremove -y',
      'apt install -y nodejs nginx build-essential',
      'npm install npm -g',

      // add a user and give sudo rights
      `adduser --disabled-password --gecos '' ${username}`,
      `echo "${username}:${password}" | chpasswd`,
      `usermod -aG sudo ${username}`,

      // copy public ssh key to server for newly created user
      `mkdir -p /home/${username}/.ssh`,
      `touch /home/${username}/.ssh/authorized_keys`,
      `echo "${sshKey}" >> /home/${username}/.ssh/authorized_keys`,

      // disallow password and root login
      "sed -re 's/^(\\#?)(PasswordAuthentication)([[:space:]]+)yes/\\2\\3no/' -i.\"$(echo 'old')\" /etc/ssh/sshd_config",
      "sed -re 's/^(\\#?)(PermitRootLogin)([[:space:]]+)(.*)/PermitRootLogin no/' -i /etc/ssh/sshd_config",

      // so the user can run `sudo systemctl restart app` without entering a password
      `echo "${username} ALL= NOPASSWD: /bin/systemctl restart app" >> /etc/sudoers.d/${username}`
    ]

    // execute all commands from above in series
    await shipit.remote(commands.join(' && '))

    // copy systemd service file to server and enable it
    await shipit.copyToRemote(
      join(__dirname, '_templates/shipit/init/app.service'),
      '/etc/systemd/system/app.service'
    )
    await shipit.remote('systemctl enable app')

    // make backup of default nginx site and copy new one to server
    await shipit.remote(
      'mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak'
    )
    await shipit.copyToRemote(
      join(__dirname, '_templates/shipit/init/app.nginx'),
      '/etc/nginx/sites-available/default'
    )

    // finally reboot the box
    try {
      await shipit.remote('reboot now')
    } catch (err) {
      shipit.log('Rebooting box...')
    }
  })
}<%= '\n' %>