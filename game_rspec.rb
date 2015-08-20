require './game'
require './player'

RSpec.describe Game do

 it "has a capitalized name" do
    game = Game.new("gonnies", 10)

    expect(game.title).to eq("Goonies")
    # expect(game.health).to eq(10)
  end

end
