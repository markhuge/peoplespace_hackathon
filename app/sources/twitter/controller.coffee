_ = require 'lodash'
T = require 'twit'

twitter = new T
  consumer_key: "hEW39sgGEOpTjFULaFcbexmVo"
  consumer_secret: "SlYwG96kbeP4dhPl2F5kwBYl1zcqh4uTxhMcSZn6D4MJ7MsTXT"
  access_token: "162480253-D7iNPEobhS6t49REKYLbXvo75zJnwtnHLnu3mepD"
  access_token_secret: "OaENvJ3XiPeRqpybVBWNP5dcKZLvQtKvuwxxyb0ZfxnEB"


class Twitter
  constructor: ->
  get: (username, callback) ->
    twitter.get 'users/show', screen_name: username, (err ,data) ->
      if err then return callback err
      console.log data
      callback null, _.pick(data, ["name","friends_count","followers_count","friends_count","listed_count","screen_name","profile_image_url"])
      

module.exports = new Twitter
