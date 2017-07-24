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
=end
require 'csv'

# Create a new CSV to store values
CSV.open("Output.csv", "wb") do |csv|

  # Read in the CSV
  CSV.foreach('exercises/rent-data.csv') do |row|
    # checks for VALUE field to be above 0 - but I already filtered the non-zero entries out to cut down on size
    if row[7].to_i > 0 and row[0].to_i > 1980 and row[0].to_i < 1990 and row[1].include? "Edmonton"
          # Adding the filtered data to a new file.
          csv << row
          # puts row
    end

    # selection sort
  end
end

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
