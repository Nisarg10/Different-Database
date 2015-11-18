require 'redis'

connection = Redis.new(:host => "ec2-107-21-120-49.compute-1.amazonaws.com", :port => 17879, :url => "redis://h:p61crvnv1vies83ig83ludr5bnv@ec2-107-21-120-49.compute-1.amazonaws.com:17879", :password => "p61crvnv1vies83ig83ludr5bnv")

puts "Enter id between 1 to 100 you want to retrieve.."
id=gets.chomp

puts connection.hgetall "row#{id}"

puts "Enter the year"
y = gets.chomp

i = 1
j = 1
while i < 101
	a = connection.hget "row#{i}", "year"
	if a == y
		if j < 11
			puts connection.hgetall "row#{i}"
			j += 1
		end
	end
	i += 1
end