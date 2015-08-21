require './game'
# require './player'

#Remember that the before block is called before every example runs
#so the instance variables set in the before are accesible in the examples
RSpec.describe Game do
	before do
		@game = Game.new("Knuckleheads")

		@initial_health = 100
		@player = Player.new("moe", @initial_health)

		@game.add_player(@player)
	end

 	it "w00ts the player if a high number is rolled" do
 		allow_any_instance_of(Die).to receive(:roll).and_return(5)

 		@game.play

 		expect(@player.health).to eq(@initial_health + 15)
  	end
end
