class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=150)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def score
    @health + @name.length
  end

  def to_s
   "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def w00t
    @health += 15
   puts "#{@name} got w00ted!"
  end

  def blam
   @health -= 10
   puts "#{@name} got blammed!"
  end

  def strong?
    @health > 100
  end

  # def <=>(other)
  #   other.score <=> score
  # end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
  end

end

#add sample code - recommended
if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end


