require './player'

RSpec.describe Player do
# code block to remove duplication
before(:example) do
	@initial_health = 150
	@player = Player.new("larry", @initial_health)
end
#to suppress standard output to the console (to only see green dots...)
before do
	$stdout = StringIO.new
end
#code examples go here
	it "has a capitalized name" do
		# player = Player.new("larry", 150)

		expect(@player.name).to eq("Larry")
	end

	it "has an initial health" do
		# player = Player.new("larry", 150)

		expect(@player.health).to eq(150)
	end
	it "has a string representation" do
		# player = Player.new("larry", 150)

		expect(@player.to_s).to eq("I'm Larry with a health of 150 and a score of 155.")
	end

	it "computes a score as the sum of its health and a length of name" do
		# player = Player.new("larry", 150)

		expect(@player.score).to eq(150 + 5)
	end

	it "increases health by 15 when w00ted" do
		# initial_health = 150
		# player = Player.new("larry", initial_health)
		@player.w00t

		expect(@player.health).to eq(@initial_health + 15)
	end

	it "decreases health by 10 when blammed" do
		# initial_health = 150
		# player = Player.new("larry", initial_health)
		@player.blam

		expect(@player.health).to eq(@initial_health - 10)
	end

	#TDD
	#create a context to set up a player's health
	context "Sets up a player with initial health of 150" do
		before do
			@player = Player.new("larry", 150)
		end

		it "is strong" do
			expect(@player.strong?).to eq(true)
			#Or, you can try this variation when refactor w/syntactic sugar
			# expect(@player).to be_strong
		end
	end
	context "Sets up player with initial health of 100 or less" do
		before do
			@player = Player.new("larry", 100)
		end

		it "is wimpy" do
			expect(@player.strong?).to eq(false)
		end
	end
	context "in a collection of players" do
		before do
			@player1 = Player.new("moe", 100)
			@player2 = Player.new("larry", 200)
			@player3 = Player.new("curly", 300)

			@players = [@player1, @player2, @player3]
		end

		it "is sorted by decreasing score" do
			expect(@player.strong?).sort eq(@player3, @player2, @player1)
		end
	end

end
