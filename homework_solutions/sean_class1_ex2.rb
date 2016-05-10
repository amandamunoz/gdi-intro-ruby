# Prompt the user for some input
puts "Hello, and welcome to Temp Calc! Please enter a Temperature in Farenheit: "

# Run a while loop - this will execute until one of the conditions (temp = gets) and (temp.chomp!.to_f == 0.0)
# returns false
# (temp = gets) will always return a "true-like" value, because in ruby almost everything is "true"-ish.
# Because I always want to get the users value until I have one I'm happy with, I can cheat
# and stick it in the "while" conditions directly
# (temp.chomp!.to_i == 0) is what i'm actually testing. This will always return true until
# the user gives me a value that can be turned into an Integer without any errors
# Of course, it means I can't use 0 for a value, but thats ok here for now.
while (temp = gets) && (temp.chomp!.to_f == 0.0) do
  puts "Unfortunately, #{temp} is not a valid temp. Please enter a valid temp in Farenheit: "
end

# Now, do the calculations!
# Pay attention to the (5.0/9.0) part - remember when we taught you about the difference between Integers and Floats?
# In ruby, 5/9 is 0, because both sides are integers, so ruby thinks you want a whole number, and it rounds / truncates the results
# So to get a decimal-like value, one or both sides have to have a decimal!
kelvins = (temp.to_f + 459.67) * (5.0/9.0)
celc = (temp.to_f - 32.0) * (5.0/9.0)

# Finally, display the results
puts "A temperature of #{temp} in Farenheit is #{celc} in Celcius, and #{kelvins} in Kelvins!"
