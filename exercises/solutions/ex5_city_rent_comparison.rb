# Require the csv library
require 'csv'

# Open the 'rent-data.csv' with a foreach loop
# for now it is okay for them to be blank

# default variable for highest rent
highest_rent = 0
highest_rent_city_name = ""

CSV.foreach('rent-data.csv', :encoding => 'ISO-8859-1') do |row|
  # Loop through each of the rows
    # Compare cities using or/and statements to narrow down the data
    if ((row.include? "Edmonton, Alberta" or row.include? "Toronto, Ontario") and row.include? "2008")
        puts row.to_s + "\n"
        if row[7].to_i > highest_rent
          highest_rent_city_name = row[1].to_s
          highest_rent = row[7].to_i
        end
    end
end

puts "The city with the highest rent is: " + highest_rent_city_name + " at " + highest_rent.to_s + " per month."
