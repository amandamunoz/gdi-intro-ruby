# Practice: Write a command line program that asks the user for the year they were born, then calculates their age in years, days, and seconds. Tell the user how old they are in these different formats. (Note: you'll be using gets and puts in this program, along with some math)
# Note that since we're only asking the user for their year, it's not as accurate as if we asked for their full birthday
puts 'What year were you born?'
year = gets.chomp.to_i
present_year = 2016

age_in_years = 2016 - year
age_in_days = age_in_years * 365 # ignores leap years
age_in_seconds = age_in_days * 24 * 60 * 60 # days * 24 hours in a day * 60 minutes in an hour * 60 seconds in a minute

puts "You are #{age_in_years} years old, #{age_in_days} days old, and #{age_in_seconds} seconds old!"
