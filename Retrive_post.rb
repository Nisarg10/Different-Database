require 'pg'

connection = PG.connect(:username => "uqleijmlnbbuci",
                         :password => "yXmeuqi9UiXZQLGSLX2douhddp",
                         :database => "dnq31r5ahvg4b",
                         :host => "ec2-107-21-223-110.compute-1.amazonaws.com")

puts "Enter a id from 1 to 100."
id = gets.chomp

result = connection.exec("select * from DeathCause where id=#{id}")

a = {}

result.each do |data|
	a["id"] = data['id']
	a["Ethnicity"] = data['Ethnicity']
	a["sex"] = data['sex']
	a["CauseOfDeath"] = data['CauseOfDeath']
	a["Year"] = data['Year']
end

puts a

puts "Enter the year"
y = gets.chomp 
i = 1

result1 = connection.exec("select * from DeathCause where Year=#{y}")

result1.each do |data1|
	if i < 11
		a["id"] = data1['id']
		a["Ethnicity"] = data1['Ethnicity']
		a["sex"] = data1['sex']
		a["CauseOfDeath"] = data1['CauseOfDeath']
		a["Year"] = data1['Year']
	end
	i += 1
end