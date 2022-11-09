import express from 'express'
import bodyParser from 'body-parser'
import cors from 'cors'

const app = express()
app.use(cors())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
// app.use(function (req, res, next) {setTimeout(next, 3000)})

// /api/page, /api/live-commerce, ...
app.get('/health', (req, res) => {
  res.json({ site: 'jenkins-deploy' })
})

module.exports = {
  path: '/api',
  handler: app,
}
