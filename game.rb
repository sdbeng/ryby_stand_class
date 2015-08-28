#because the game class depends on the Player class, need to require
# the player file(no need the rb extension)
require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end
  def add_player(new_player)
    @players << new_player
  end
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end

    1.upto(rounds) do |round|
      #print the round number
      puts "\nRound #{round}:"
      #call the module method defined in game_turn.rb
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
    # moved this commented code insice the each block to create module GameTurn-OJO!
        # @players.each do |player|
        #   die = Die.new
        #   case die.roll
        #     when 1..2
        #       player.blam
        #     when 3..4
        #       puts "#{player.name} was skipped."
        #     else
        #       player.w00t
        #     end
        #   puts player
        # end
  end

  def print_stats
    @strong_players, @wimpy_players = @players.partition{|p| p.strong? }
    puts "*****************"
    puts "\n#{@title} stats:"
    puts "*****************"
    puts "\n#{@strong_players.count} strong players:"

    @strong_players.each do |p|
      puts "#{p.name} (#{p.health})"
    end

    puts "\n#{@wimpy_players.count} wimpy players:"
    @wimpy_players.each do |p|
      puts "#{p.name} (#{p.health})"
    end
    puts "#{@title} High Scores:"
    #alt. we could remove sorted_players var, so we can use the sort method on the array of players(see Player class)
    sorted_players = @players.sort {|a,b| b.score <=> a.score}

    sorted_players.each do |p|
      formatted_name = p.name.ljust(20, '.')
      puts "#{formatted_name} #{p.score}"
    end

  end



end