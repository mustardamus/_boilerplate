---
to: jest.config.js
unless_exists: true
---
module.exports = {
  testEnvironment: 'node',
  collectCoverageFrom: ['src/**/*.js']
}<%= '\n' %>