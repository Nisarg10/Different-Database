require 'json'
require 'open-uri'
require 'redis'

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = Redis.new(:host => "ec2-54-83-9-36.compute-1.amazonaws.com", :port => 7369, :url => "redis://h:pcucqtm555pilc58fo5s91vojp1@ec2-54-83-9-36.compute-1.amazonaws.com:7369", :password => "pcucqtm555pilc58fo5s91vojp1")

i = 1

while i < 101

	hset "row#{i}","id",i
	hset "row#{i}","Ethnicity", data[i][8]
	hset "row#{i}","sex", data[i][9]
	hset "row#{i}","CauseOfDeath", data[i][10]
	hset "row#{i}","year", data[i][7]
	puts hgetall "row#{i}"
	i += 1
end

puts "Data Stored"