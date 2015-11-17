require 'redis'

connection = Redis.new(:host => "ec2-54-83-9-36.compute-1.amazonaws.com", :port => 7369, :url => "redis://h:pcucqtm555pilc58fo5s91vojp1@ec2-54-83-9-36.compute-1.amazonaws.com:7369", :password => "pcucqtm555pilc58fo5s91vojp1")

puts "Enter id you want to retrieve.."
id=gets.chomp

puts redis.hgetall "row#{id}"

puts "Enter the year"
y = gets.chomp

i = 1
j = 1
while i < 101
	a = redis.hget "row#{i}", "Year"
	if a == y & j < 11
		puts redis.hgetall "row#{i}"
		j += 1
	end
	i += 1
end