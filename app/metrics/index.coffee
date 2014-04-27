# Assumes twitter because time
weights =
  followers_count: 1
  listed_count: 1

@calculate = (data,callback) ->

# iterate over keys,values in data
# count += weights[key] * value
