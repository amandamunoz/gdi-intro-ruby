puts "What would you like to do?
1. add animal
2. remove animal
3. show all animals
4. quit program"

animals_hash = Hash.new

selection = gets.chomp

while selection != '4'
  if selection == '1'
    print "Enter the name of the animal to add: "
    animal = gets.chomp

    if animals_hash[animal]
      print "You already have #{animals_hash[animal]} #{animal}s. "
      animals_hash[animal] += 1
      puts "Now you have #{animals_hash[animal]} #{animal}s!"
    else
      animals_hash[animal] = 1
      puts "You added a(n) #{animal}!"
    end
  elsif selection == '2'
    print "Enter the name of the animal to remove: "
    animal = gets.chomp

    if animals_hash[animal] > 0
      animals_hash[animal] -= 1
      puts "You removed a(n) #{animal}. Now you have #{animals_hash[animal]} animal(s)"
    else
      puts "You don't have any #{animal}s."
    end
  elsif selection == '3'
    puts "Your menagerie contains: #{hash.keys}"
  else
    puts "Invalid selection. Try again"
  end

  puts "What do you want to do now? "
  selection = gets.chomp
end

# What are some vulnerabilities in this program? How can they be resolved?
# 1. a user can enter any garbage as an animal
