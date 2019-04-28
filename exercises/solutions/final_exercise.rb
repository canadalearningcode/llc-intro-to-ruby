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
=end

require 'csv'

# Function 'average_rent':
#     Find average rent for a specific type of rental units
#     in a specific province and in a specific decade.
# Arguments:
#     - data: CSV data returned by CSV.read
#     - selected_type: Type of rental unit of interest (for example "One bedroom units")
#     - selected_province: Province of interest (for example "Alberta")
#     - decade: First year in the decade of interest (for example 1980)

def average_rent(data, selected_type, selected_province, decade)
    count = 0
    rent_sum = 0

    for row in data
        year = row[0].to_i
        location = row[1]
        type = row[4]
        rent = row[7].to_i

        if type == selected_type && location.include?(selected_province) && year >= decade && year < decade + 10
            count += 1
            rent_sum += rent
        end
    end

    if count == 0
        return 0
    else
        return rent_sum / count
    end
end

type = "One bedroom units"
province = "Alberta"

data = CSV.read('exercises/rent-data.csv')
rent_80s = average_rent(data, type, province, 1980)
rent_90s = average_rent(data, type, province, 1990)

puts "Average rent for " + type + " in " + province + " in the 80s was $" + rent_80s.to_s
puts "Average rent for " + type + " in " + province + " in the 90s was $" + rent_90s.to_s
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
