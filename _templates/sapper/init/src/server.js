import express from 'express'
import * as sapper from '@sapper/server' // eslint-disable-line

const { PORT } = process.env

express()
  .use(express.static('static'))
  .use(sapper.middleware())
  .listen(PORT, err => {
    if (err) {
      throw new Error(err)
    }
  })
