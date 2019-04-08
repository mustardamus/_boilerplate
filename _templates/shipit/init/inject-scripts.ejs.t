---
to: package.json
inject: true
after: scripts
skip_if: "shipit setup"
---
    "server:setup": "SERVER_IP=<%= serverIp %> npx shipit setup setup",
    "server:deploy": "SERVER_IP=<%= serverIp %> npx shipit staging deploy",
    "server:restart": "SERVER_IP=<%= serverIp %> npx shipit staging restart",
    "server:ssh": "ssh app@<%= serverIp %>",