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

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end
  def add_player(new_player)
    @players << new_player
  end
  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.w00t
      player.blam
      puts player
    end
  end

end

#run gamr
player1 = Player.new("moe")

player2 = Player.new("larry", 60)

player3 = Player.new("curly", 125)

knuckeheads = Game.new("Knuckeheads")
knuckeheads.add_player(player1)
knuckeheads.add_player(player2)
knuckeheads.add_player(player3)

knuckeheads.play


