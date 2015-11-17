require "mongo"
include Mongo

connection = Mongo::Client.new(['ds049854.mongolab.com:49854'], :database => 'heroku_fxxhzprk', :user => 'nsd6275', :password => 'nsd6275')

puts "Enter the unique primary key to retrieve the data.."
id=gets.chomp

db[:heroku_fxxhzprk].find('id' => id).each {|data| 
puts data }

puts "Enter the year"
y = gets.chomp 

db[:heroku_fxxhzprk].find('year' => y).each {|data1|
puts data1 }