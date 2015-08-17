#it's all about State and Behaviours!

class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
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

end

#run this:
player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

player3.blam
puts player3
player3.w00t
puts player3

puts "attrs section".center(30, '*')

#work w/attributes concepts
player2 = Player.new("larry",60)
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2

players = [player1,player2,player3]
puts "There are #{players.size} players in the game"

#use each method
players.each do |obj|
  puts obj
end




