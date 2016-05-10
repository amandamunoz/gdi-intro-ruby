# Temperature conversion! Make a program that asks the user for the temperature in Fahrenheit and print out the temperature in Celsius and Kelvins.

print "Enter a temperature in farenheit: " # i used print instead of puts here: puts adds a new line, print does not
temp_in_f = gets.to_f
temp_in_k = (temp_in_f + 459.67) * 1.8
temp_in_c = (temp_in_f - 32) * 1.8
puts "You entered #{temp_in_f} degrees farenheit. This is equivalent ot #{temp_in_k} degrees kelvin, and #{temp_in_c} degree celsius."

# Think about how we can make this program more robust. What if the user entered an impossible number (ex. -10000 degrees farenheit).
# What kind of error checking could be put in place to account for that?
