express  = require 'express'
app      = express()

server   = require('http').createServer(app)

mongoose = require 'mongoose'

twitter  = require './sources/twitter'

api      = require './api'


mongoose.connect process.env.MONGO_CONNECTION_STRING


app.use express.static(__dirname + '/../public')
app.use express.static(__dirname + '/../bower_components')

app.use twitter
app.use api


module.exports = server.listen process.env.PORT || 8080
