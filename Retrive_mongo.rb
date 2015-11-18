require "mongo"
include Mongo

connection = Mongo::Client.new(['ds047712.mongolab.com:47712/heroku_hfts48pr'], :database => 'heroku_hfts48pr', :user => 'nsd6275', :password => 'nsd6275')

puts "Enter the id between 1 t 100"
id=gets.chomp

connection[:DeathCause].find('id' => id).each {|data| 
puts data }

puts "Enter the year"
y = gets.chomp 

connection[:DeathCause].find('year' => y).each {|data1|
puts data1 }