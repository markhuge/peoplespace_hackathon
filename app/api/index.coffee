express = require 'express'
module.exports = app = express()

celebs = [
  {"name": "KayneWest", "score": 4, "pic": "https://pbs.twimg.com/profile_images/1132696610/securedownload.jpeg" }
  {"name": "DavidHasselhoff", "score": 2, "pic": "https://pbs.twimg.com/profile_images/3743170569/93ed67968fc5eeed632e794003cc40aa.jpeg"}
  {"name": "ParisHilton", "score": 3, "pic": "https://pbs.twimg.com/profile_images/378800000830116350/b4777a60c150c54637c7688665a9e11b.jpeg"}
]

app.get '/api/celebrities', (req,res) ->
  res.json celebs