require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))
text = doc.at('body').inner_text
puts text.scan(/(?:^|\s+)([Tt]he)(?:\s+|$)/).size
