# Prompt the user for some input
puts "Hello, and welcome to Age Calc! Please enter the year you were born (Any number greater than 0): "

# Run a while loop - this will execute until one of the conditions (year = gets) and (year.chomp!.to_i == 0)
# returns false
# (year = gets) will always return a "true-like" value, because in ruby almost everything is "true"-ish.
# Because I always want to get the users value until I have one I'm happy with, I can cheat
# and stick it in the "while" conditions directly
# (year.chomp!.to_i == 0) is what i'm actually testing. This will always return true until
# the user gives me a value that can be turned into an Integer without any errors
# Of course, it means I can't use 0 for a value, but thats ok here for now.
while (year = gets) && (year.chomp!.to_i == 0) do
  # If they don't give you the right info, prompt them again
  # The "gets" call in the while loop will handle re-getting their data.
  puts "Unfortunately, #{year} is not a valid age. Please enter a valid year, greater than 0: "
end

# Now, do the calculations!
age_in_years = Time.now.year - year.to_i
age_in_days = age_in_years * 365
age_in_seconds = age_in_days * 86400

# Finally, display the results
puts "You are around #{age_in_years} years old, #{age_in_days} days old, and #{age_in_seconds} seconds old!"
puts "... Roughly speaking, there is only so much I can guess from year alone, and the program itself is very sloppy and lazy!"
