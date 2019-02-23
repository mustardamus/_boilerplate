module.exports = [
  {
    type: 'input',
    name: 'filePath',
    message: 'Path for file to test relative to `./src/` (without `src/` but with extension)'
  },
  {
    type: 'input',
    name: 'describe',
    message: 'Which feature to test `describe(\'xxx\', ...)`'
  },
  {
    type: 'input',
    name: 'itShould',
    message: 'First test case description `it(\'should xxx\', ...)`'
  }
]
