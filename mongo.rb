require 'json'
require 'open-uri'
require "mongo"
include Mongo

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = Mongo::Client.new(['ds047712.mongolab.com:47712/heroku_hfts48pr'], :database => 'heroku_hfts48pr', :user => 'nsd6275', :password => 'nsd6275')

i = 1

while i < 101 
	a = connection[:DeathCause].insert_one({
		id: "#{i}",
		ethnicity: data["data"][i][9],
		sex: data["data"][i][10],
		causeOfDeath: data["data"][i][11],
		year: data["data"][i][8]
	})
	i+=1
end

puts "Data stored."