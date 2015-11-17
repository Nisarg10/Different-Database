
require 'json'
require 'open-uri'
require 'pg'

data = JSON.parse(open("https://data.cityofnewyork.us/api/views/jb7j-dtam/rows.json?accessType=DOWNLOAD").read)

connection = PG.connect(:username => "uqleijmlnbbuci",
                         :password => "yXmeuqi9UiXZQLGSLX2douhddp",
                         :database => "dnq31r5ahvg4b",
                         :host => "ec2-107-21-223-110.compute-1.amazonaws.com")

connection.exec("CREATE TABLE DeathCause(id INTEGER PRIMARY KEY, Ethnicity TEXT, sex Text, CauseOfDeath TEXT, Year INTEGER)")

i = 1

while i < 101 
	Ethnicity = data[i][8]
	sex = data[i][9]
	CauseOfDeath = data[i][10]
	Year = data[i][7]	 	
	connection.exec("insert into DeathCause VALUES('#{i})','#{Ethnicity}','#{sex}', '#{CauseOfDeath}', #{Year}")
	i += 1
end

puts "Data Entered."