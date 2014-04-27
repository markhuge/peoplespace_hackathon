express  = require 'express'
app      = express()

server   = require('http').createServer(app)

mongoose = require 'mongoose'

twitter  = require './sources/twitter'

api      = require './api'
  

mongoose.connect 'mongodb://hack:hack1@ds030607.mongolab.com:30607/main'


app.use express.static(__dirname + '/../public')
app.use express.static(__dirname + '/../bower_components')

app.use twitter
app.use api


module.exports = server.listen 3000