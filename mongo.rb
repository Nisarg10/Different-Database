require 'json'
require 'open-uri'
require "mongo"
include Mongo

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = Mongo::Client.new(['ds047712.mongolab.com:47712/heroku_hfts48pr'], :database => 'heroku_hfts48pr', :user ’nsd6275', :password => 'nsd6275')

i = 1

while i < 101 
	a = connection[:heroku_hfts48pr].insert_one({
		id: "#{i}",
		ethnicity: data[#{i}][8],
		sex: data[#{i}][9],
		causeOfDeath: data[#{i}][10],
		year: data[#{i}][7]
	})
	i+=1
end

puts "Data stored."