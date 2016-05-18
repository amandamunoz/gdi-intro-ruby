require_relative './die.rb'
class Character

  def initialize(name)
    @name = name
    @health = 10
  end

  def name
    @name
  end

  def heal!
    @health += 6
  end

  def adventure!
    if @health > 0
      puts "#{@name} goes on a great adventure and meets a dragon!"
      puts "The dragon hugged #{@name} kind of hard..."
      d = Die.new
      d.roll!
      @health -= d.showing
      puts "#{@name} took #{d.showing} points of damage..."
    else
      puts "#{@name} is dead :("
      exit
    end
  end
end
