puts '============', __FILE__, '============'

puts ENV['AWS_ACCESS_KEY_ID']
puts ENV['AWS_SECRET_ACCESS_KEY']

AWS.config({
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  })

