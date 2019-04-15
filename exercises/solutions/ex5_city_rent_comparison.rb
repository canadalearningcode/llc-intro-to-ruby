# Require the csv library
require 'csv'

# Read the file 'no-emissions.csv' using the library
data = CSV.read('rent-data.csv')

# Variables tracking the city with the highest rent seen so far in the loop
highest_rent = 0
highest_rent_city_name = ""

# Loop through each of the rows
for row in data
    # If this row is for a city of interest
    if ((row.include? "Edmonton, Alberta" or row.include? "Toronto, Ontario") and row.include? "2008")
        # Print the row
        puts row.to_s + "\n"
        # If the rent is the highest so far
        if row[7].to_i > highest_rent
            # Save the rent and the city name in variables
            highest_rent_city_name = row[1].to_s
            highest_rent = row[7].to_i
        end
    end
end

# Print the highest rent and the city it was found in
puts "The city with the highest rent is: " + highest_rent_city_name + " at " + highest_rent.to_s + " per month."
