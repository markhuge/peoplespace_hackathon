express = require 'express'
module.exports = app = express()

source = require './controller'

app.get '/celebrities/:username', (req,res) ->
  source.get req.params.username, (err,data) ->
    if err then res.json 500, err else res.json data
  
    