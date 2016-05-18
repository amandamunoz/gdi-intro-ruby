class Dwarf < Character
  def dig
    puts "I'm a good digger!"
  end

  def heal
    @health += 4 # Dwarves don't heal as much as elves
  end
end
