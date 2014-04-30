express = require 'express'
module.exports = app = express()
parser = require 'body-parser'

metrics = require '../../metrics'

app.use parser.json()

# supppper dirty 

source = require './controller'

list = []
{celebs} = require '../../models' #dirty
celebs.model.find {}, (err,docs) ->
  for doc in docs
    source.get doc.twitter_handle, (err,data) ->
      if err then console.log err
      if data
        metrics.calculate data, (err,count) ->
          data.score = count
          list.push data




app.get '/api/celebrities/:username', (req,res) ->
  source.get req.params.username, (err,data) ->
    if err then res.json 500, err else res.json data
  
app.get '/api/celebrities', (req,res) ->
  res.json list