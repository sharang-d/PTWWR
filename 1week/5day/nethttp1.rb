require 'net/http'
url = URI.parse('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  text = http.request(req).body
  text = text.scan(/<body.*>.*<\/body>/m)[0] # select only the body
  text.gsub!(/<!--.*-->/,'')  # strip comments
  puts text.scan(/(?:^|>|\s+)([tT]he)(?:<|\s+|$)/).size
end
