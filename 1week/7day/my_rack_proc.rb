require 'rack'
my_rack_lambda = ->(env){ [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]] }
ARGV[0] ? Rack::Handler::WEBrick.run(my_rack_lambda, Port: 8500) : puts('Please supply a command line argument')
