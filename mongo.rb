require 'json'
require 'open-uri'
require "mongo"
include Mongo

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = Mongo::Client.new(['ds049854.mongolab.com:49854'], :database => 'heroku_fxxhzprk', :user => 'heroku_fxxhzprk')

i = 1

while i < 101 
	n = connection[:heroku_fxxhzprk].insert_one({
		id: "#{i}",
		ethnicity: data[i][8],
		sex: data[i][9],
		causeOfDeath: data[i][10],
		year: data[i][7]
	})
	i+=1
end

puts "Data stored."