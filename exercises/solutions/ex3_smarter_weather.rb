
puts "What is the weather? (cold, raining, etc.): "
# chomp removed the enter at the end of a line "chomps" off the /n or ENTER key input
weather = gets.chomp.to_i

# if the weather is greater than or equal to 25 degrees
if weather >= 25
    print "Go to the beach!\n" # The '\n' adds a new line so it prints nicely.
# the weather is less than 25 degrees AND greater than 15 degrees
elsif weather < 25 && weather > 15
    # Still warm enough for ice cream!
    print "I'm getting ice cream!\n"
else
    # Wear a sweater and dream of beaches.
    print "time to window shop for holidays.\n"
end
