module.exports = [
  {
    type: 'input',
    name: 'repositoryUrl',
    message: 'URL of the repository you want to deploy from',
    default: 'https://github.com/mustardamus/_boilerplate.git'
  },
  {
    type: 'input',
    name: 'serverIp',
    message: 'IP of the server you want to deploy to'
  }
]
