# Assumes twitter because time
weights =
  followers_count: 1
  listed_count: 1

@calculate = (data,callback) ->
  count = 0
  count += data.followers_count
  count += data.friends_count
  callback null,count

# iterate over keys,values in data
# count += weights[key] * value
