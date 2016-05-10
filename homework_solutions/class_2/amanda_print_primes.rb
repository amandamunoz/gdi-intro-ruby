require 'prime'

# Write a program that prints out every number
# between 1 and 1000 that is divisible by 7.

puts "Numbers between 1 and 1000 divisible by 7"
(1..1000).each do |num|
  print "#{num}, " if (num % 7) == 0
end

puts "Prime numbers between 1 and 1000"
# Print out all the prime numbers
# between 1 and 1000.

(1..1000).each do |num|
  print "#{num}, " if num.prime?
end
