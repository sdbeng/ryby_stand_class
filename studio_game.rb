#this is the main program with driver code -
#it depends on the Player and Game class so,
require_relative 'player'
require_relative 'game'


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = Player.new("Alvin")
player5 = Player.new("Simon", 45)
player6 = Player.new("Theo", 20)

knuckeheads = Game.new("Knuckeheads")
chipmunks = Game.new("Chipmunks")

knuckeheads.add_player(player1)
knuckeheads.add_player(player2)
knuckeheads.add_player(player3)
knuckeheads.play(3)

chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play


