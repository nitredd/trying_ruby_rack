require 'rack'
require 'rackup'

# "Proc.new" can be used instead of "lambda" in the line below
MY_RACK_PROC = lambda do |env|
  req_path = env['REQUEST_PATH']
  
  # The headers (2nd array element below) should be in lowercase
  [404, {'content-type' => 'text/plain'}, ["Not Found"]] :
end

# To execute this script directly, uncomment the below
# Rackup::Handler::WEBrick.run my_rack_proc
# "Rackup::Handler" used to "Rack::Handler" but was moved from the rack gem to the rackup gem
