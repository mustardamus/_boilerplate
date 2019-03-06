---
to: config/environments/development/database.json
unless_exists: true
---
{
  "defaultConnection": "default",
  "connections": {
    "default": {
      "connector": "strapi-hook-bookshelf",
      "settings": {
        "client": "postgres",
        "host": "127.0.0.1",
        "port": 5432,
        "database": "<%= dbName %>",
        "username": "<%= dbUser %>",
        "password": "<%= dbPass %>"
      },
      "options": {}
    }
  }
}<%= '\n' %>