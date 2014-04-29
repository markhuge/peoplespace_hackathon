mongoose = require 'mongoose'

Schema =
  name           : type: String
  twitter_handle : type: String
  
schema = new mongoose.Schema(Schema)

@model = mongoose.model 'celebrities', schema

