require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))
str = doc.at('body').inner_text
puts str
puts str.scan(/(?:^|\s+)([Tt]he)(?:\s+|$)/).flatten.size
