express = require 'express'
app = express()
server = require('http').createServer(app)

app.use express.static(__dirname + '/../public')
app.use express.static(__dirname + '/../bower_components')

server.listen 3000