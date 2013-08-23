require 'open-uri'
open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html') do |f|
  text = f.read
  text = text.scan(/<body.*>.*<\/body>/m)[0] # select only the body
  text.gsub!(/<!--.*-->/,'') # strip comments
  puts text.scan(/(?:^|\s+|>)([tT]he)(?:<|\s+|$)/).size
end
