# Require the csv library
require 'csv'

# Open the 'no-emissions.csv' with a foreach loop
CSV.foreach("./no-emissions.csv") do |row|
# Loop through each of the rows
  country = row[0].to_s
  emissions2002 = row[1].to_i
  emissions2012 = row[2].to_i
  # Compare the integer in the second (row[1]) with the integer in the third row (row[2])
  difference = emissions2002 - emissions2012 # Here I am hoping they decreased!
  puts "The difference in emissions from 2002 to 2012 for " + country + " is " + difference.to_s + " kilotonnes!"
        # Print "The difference in emissions between 2002 and 2012 for [COUNTRY] is [NUMBER] kilotonnes!"
end
