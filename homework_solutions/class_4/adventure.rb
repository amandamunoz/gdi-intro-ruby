require_relative 'character.rb'
require_relative 'elf.rb'
require_relative 'dwarf.rb'
require_relative 'die.rb'


puts "Your name?"
char = Character.new(gets.chomp)

while 1
  char.adventure!
  d = Die.new
  d.roll!
  if d.showing >= 5
    puts "#{char.name} is healing!"
    char.heal!
  end
end
