puts "What is the weather? (cold, raining, etc.): "
# chomp removed the enter at the end of a line "chomps" off the /n or ENTER key input
weather = gets.chomp

if (weather == "cold")
    puts "Wear a sweater!"
elsif (weather == "raining")
    puts "Bring an umbrella"
else
    puts "Dress normally :)"
end
