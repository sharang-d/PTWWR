require 'rack'
my_rack_proc = ->(env){ [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]] }
ARGV[0] ? Rack::Handler::WEBrick.run(my_rack_proc, :Port => 8500) : puts('Please supply a command line argument')
