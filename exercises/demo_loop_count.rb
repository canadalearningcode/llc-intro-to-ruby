require "csv"

count = 0

for row in CSV.read("no-emissions.csv")
    # Ignore irrelevant rows
    if row[1].to_i > 0
        count += 1
    end
end

puts "There are " + count.to_s + " countries in the survey."
