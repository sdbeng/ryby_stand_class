#because the game class depends on the Player class, need to require
# the player file(no need the rb extension)
require_relative 'player'

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