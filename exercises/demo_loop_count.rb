require 'csv'

count = 0

CSV.foreach("no-emissions.csv") do |row|
  count += 1
end

# If you take a look at the data, the first three lines aren't countries,
# so to be more accurate you can minus 3 from the total.
count -= 3

puts "There are " + count.to_s + " countries in the survey."
