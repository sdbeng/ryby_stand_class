require_relative 'player'
require_relative 'die'

module GameTurn
	#use self to access the module from another file/class
	def self.take_turn(player)
	    die = Die.new
	    	case die.roll
	    		when 1..2
	      			player.blam
	    		when 3..4
	      			puts "#{player.name} was skipped."
	    		else
	      			player.w00t
	    	end
	end
end

#Notes to remember
#1.Modules can simply act as buckets to store some methods. They can't be instantiated.
#2.In order to work w/methods in modules, they need to be called w/ self.
#for ex. self.review, then when called do: MyModule.review