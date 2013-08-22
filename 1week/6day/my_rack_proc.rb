my_rack_proc = ->(env){ [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]] }
puts ARGV[0] ? my_rack_proc[{}] : 'Please supply a command line argument'
