# Require the csv library
require 'csv'

# Read the file 'no-emissions.csv' using the library
data = CSV.read("./no-emissions.csv")

# Loop through the rows 3 to 35
for row in data[3..35]
    # Go to next row if second column is empty
    if row[1] == nil
        next
    end

    country = row[0].to_s
    emissions2002 = row[1].to_i
    emissions2012 = row[2].to_i

    # Compare the integer in the second column (row[1]) with the integer in the third column (row[2])
    difference = emissions2012 - emissions2002 # Here I am hoping they decreased!

    # Print "The difference in emissions between 2002 and 2012 for [COUNTRY] is [NUMBER] kilotonnes!"
    puts "The difference in emissions from 2002 to 2012 for " + country + " is " + difference.to_s + " kilotonnes!"
end
