express = require 'express'
app = express()
server = require('http').createServer(app)
twitter = require './sources/twitter'
api = require './api'

app.use express.static(__dirname + '/../public')
app.use express.static(__dirname + '/../bower_components')

app.use twitter
app.use api

module.exports = server.listen 3000