if Rails.env.development? and ENV['BYEBUG_SERVER_PORT']
    require 'byebug/core'
  Byebug.start_server 'localhost', ENV['BYEBUG_SERVER_PORT'].to_i
end