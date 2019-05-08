puts "What is the temperature? (enter a number): "

# chomp removed the enter at the end of a line "chomps" off the \n or ENTER key input
temperature = gets.chomp.to_i

# if the temperature is greater than or equal to 25 degrees
if temperature >= 25
    puts "Go to the beach!"
# the temperature is less than 25 degrees AND greater than 15 degrees
elsif temperature < 25 && temperature > 15
    # Still warm enough for ice cream!
    puts "I'm getting ice cream!"
else
    # Wear a sweater and dream of beaches.
    puts "Time to window shop for holidays."
end
