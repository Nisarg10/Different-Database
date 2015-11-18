require 'json'
require 'open-uri'
require 'redis'

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = Redis.new(:host => "ec2-54-83-9-36.compute-1.amazonaws.com", :port => 7369, :url => "redis://h:pcucqtm555pilc58fo5s91vojp1@ec2-54-83-9-36.compute-1.amazonaws.com:7369", :password => "pcucqtm555pilc58fo5s91vojp1")

i = 1

while i < 101

	redis.hset "row#{i}","id",i
	redis.hset "row#{i}","Ethnicity", data["data"][i][8]
	redis.hset "row#{i}","sex", data["data"][i][9]
	redis.hset "row#{i}","CauseOfDeath", data["data"][i][10]
	redis.hset "row#{i}","year", data["data"][i][7]
	puts redis.hgetall "row#{i}"
	i += 1
end

puts "Data Stored"