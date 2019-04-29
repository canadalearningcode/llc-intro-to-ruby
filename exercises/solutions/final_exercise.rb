=begin
Ladies Learning Code
July 16 2015
Sarah Beck - essefbeck@gmail.com

This is a super simple program to show me the rent costs of all apartments in Toronto
between 1980 and 1990. The CSV is originally read in as all strings so some conversion magic needs
to happen for the values. The header is:
Ref_Date, GEO, Geographical classification, STRUCTURE, UNIT, Vector, Coordinate,Value
and full dataset (11MB) can be downloaded here: (You will have to rename it)
http://open.canada.ca/data/en/dataset/1146388b-a150-4e70-98ec-eb40cb9083c8

---
April 9 2019
Jakob Leben - jakob.leben@gmail.com

Adapted to use only the Ruby features presented on the slides.

---
April 27 2019
Susan Wright - wright1@ualberta.ca

Altered to use the '&&' and '||' syntax instead of 'and' and 'or'

---
April 28 2019
Eddie Antonio Santos - Eddie.Santos@nrc-cnrc.gc.ca

Further adapted to no longer use functions.
=end

require 'csv'

# Read data from the CSV file 'rent-data.csv'
data = CSV.read("exercises/rent-data.csv")

# Pick a province and a rental unit type (take a look at the CSV file for examples)
#     - selected_type: Type of rental unit of interest (for example "One bedroom units")
selected_type = "One bedroom units"
#     - selected_province: Province of interest (for example "Alberta")
selected_province = "Alberta"

# === PART A ===
# Calculate the average rent for the desired province and rental unit type in the 80s.

# Keep a count of the number of rental units.
count = 0
# Keep a sum of all of the rents
rent_sum = 0

# For each row in the CSV file...
for row in data
    # Get the year from the row and convert it to an integer
    year = row[0].to_i
    # Get the location from the row
    location = row[1]
    # Get the rental unit type from the row
    type = row[4]
    # Get the price of rent from the row and convert it to an number
    rent = row[7].to_i

    # Add the rent to the rent sum ONLY when the type in the row is the selected
    # type AND when the location contains the province AND when the year is
    # between 1980 and 1989, inclusive.
    if type == selected_type && location.include?(selected_province) && year >= 1980 && year <= 1989
        count += 1

        rent_sum += rent
    end
end

# Average rent is sum of all the rents divided by how many units we've
# counted. Make sure to avoid dividing by zero: then the average is 0!
if count == 0
    rent_80s = 0
else
    rent_80s = rent_sum / count
end

# Print this value.
puts "Average rent for " + selected_type + " in " + selected_province + " in the 80s was $" + rent_80s.to_s

# === PART B ===
# Do the same for the 90s. To reiterate:
# Calculate the average rent for the desired province and rental unit type in the 90s.

# Keep a count of the number of rental units.
count = 0
# Keep a sum of all of the rents
rent_sum = 0

# For each row in the CSV file...
for row in data
    # Get the year from the row and convert it to an integer
    year = row[0].to_i
    # Get the location from the row
    location = row[1]
    # Get the rental unit type from the row
    type = row[4]
    # Get the price of rent from the row and convert it to an number
    rent = row[7].to_i

    # Add the rent to the rent sum ONLY when the type in the row is the selected
    # type AND when the location contains the province AND when the year is
    # between 1990 and 1999, inclusive.
    if type == selected_type && location.include?(selected_province) && year >= 1990 && year <= 1999
        count += 1

        rent_sum += rent
    end
end

# Average rent is sum of all the rents divided by how many units we've
# counted. Make sure to avoid dividing by zero: then the average is 0!
if count == 0
    rent_90s = 0
else
    rent_90s = rent_sum / count
end

# Print this value.
puts "Average rent for " + selected_type + " in " + selected_province + " in the 90s was $" + rent_90s.to_s

# Calculate and print the difference between the average rent in the 90s and in the 80s.
puts "Difference is: $" + (rent_90s - rent_80s).to_s

=begin
# Selection sort (very slow on large lists)
list = CSV.open()
size_of_list = a.size - 1

size_of_list.times do |item|
  index_min = item

  (item + 1).upto(size_of_list) do |j|
    index_min = j if a[j] < a[index_min]
  end
  list[i], list[index_min] = list[index_min], list[i] if index_min != item
end

=end
