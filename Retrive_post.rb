require 'pg'

connection = PG.connect  :dbname => "dfm1q8av5dgnd5",
			  :user => "dckxytovmhkaqf",
                         :password => "TCiCqyCh-WqUb1FDNEmFACeM7h",
                         :host => "ec2-54-204-25-54.compute-1.amazonaws.com"

puts "Enter a id from 1 to 100."
id = gets.chomp

result = connection.exec("select * from DeathCause where id='#{id}'")

a = {}

result.each do |data|
	a["id"] = data[0]
	a["Ethnicity"] = data[1]
	a["sex"] = data[2]
	a["CauseOfDeath"] = data[3]
	a["Year"] = data[4]
end

puts a

puts "Enter the year"
y = gets.chomp 
i = 1

result1 = connection.exec("select * from DeathCause where Year='#{y}'")

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