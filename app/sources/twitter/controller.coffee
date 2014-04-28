_ = require 'lodash'
T = require 'twit'

twitter = new T
  consumer_key: process.env.TWITTER_CONSUMER_KEY
  consumer_secret: process.env.TWITTER_CONSUMER_SECRET
  access_token: process.env.TWITTER_CONSUMER_ACCESS_TOKEN
  access_token_secret: process.env.TWITTER_CONSUMER_ACCESS_TOKEN_SECRET


class Twitter
  constructor: ->
  get: (username, callback) ->
    twitter.get 'users/show', screen_name: username, (err ,data) ->
      if err then return callback err
      callback null, _.pick(data, ["name","friends_count","followers_count","friends_count","listed_count","screen_name","profile_image_url"])


module.exports = new Twitter
