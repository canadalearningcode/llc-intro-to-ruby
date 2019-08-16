require "csv"


# Read data from the CSV file "rent-data.csv"

# Pick a province and a rental unit type (take a look at the CSV file for examples)
#     - selected_type: Type of rental unit of interest (for example "One bedroom units")

#     - selected_province: Province of interest (for example "Alberta")

# === PART A ===
# Calculate the average rent for the desired province and rental unit type in the 80s.

# Keep a count of the number of rental units.

# Keep a sum of all of the rents


# For each row in the CSV file...

    # Get the year from the row and convert it to an integer

    # Get the location from the row

    # Get the rental unit type from the row

    # Get the price of rent from the row and convert it to an number


    # Add the rent to the rent sum ONLY when the type in the row is the selected
    # type AND when the location contains the province AND when the year is
    # between 1980 and 1989, inclusive.

# Average rent is sum of all the rents divided by how many units we've
# counted. Make sure to avoid dividing by zero: then the average is 0!

# Use puts to display this value

# === PART B ===
# Do the same for the 90s. To reiterate:
# Calculate the average rent for the desired province and rental unit type in the 90s.

# Keep a count of the number of rental units.

# Keep a sum of all of the rents


# For each row in the CSV file...

    # Get the year from the row and convert it to an integer

    # Get the location from the row

    # Get the rental unit type from the row

    # Get the price of rent from the row and convert it to an number


    # Add the rent to the rent sum ONLY when the type in the row is the selected
    # type AND when the location contains the province AND when the year is
    # between 1990 and 1999, inclusive.

# Average rent is sum of all the rents divided by how many units we've
# counted. Make sure to avoid dividing by zero: then the average is 0!

# Use puts to display this value

# Calculate the difference between the average rent in the 90s and in the 80s.

# Use puts to display that difference
