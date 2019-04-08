---
to: docs/npm-commands.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run server:setup"
---
### `npm run server:setup`

Takes a fresh root VPS and sets it up to host a Node.js app. See all the setup
commands in `./shipitfile.js`. After the setup, logging in with the `root`
account will be disabled.

### `npm run server:deploy`

Deploys the application to the server and restarts the Node.js application.

### `npm run server:restart`

Restart the Node.js application.

### `npm run server:ssh`

Creates a SSH session for the `app` user.