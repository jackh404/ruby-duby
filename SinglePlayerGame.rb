#Interface Segregation Principle

module BasicGame
	def get_game_name
		raise "Not implemented"
	end
end

module OnlineGame
	def get_server_list
		raise "Not implemented"
	end
end

# require './basic_game'
# require './online_game'

class MultiplayerGame
	def get_server_list
		puts "US-East, US-West, Europe"
	end

	def get_game_name
		puts "Multiplayer Game"
	end
end

module PausableGame
	def pause_game
		raise "Not implemented"
	end
end

# require './basic_game'
# require './pausable_game'

class SingleplayerGame
	def get_game_name
		puts "Singleplayer Game"
	end

	def pause_game
		puts "Pausing game..."
	end
end

# require './singleplayer_game'
# require './multiplayer_game'

singleplayerGame = SingleplayerGame.new;
multiplayerGame = MultiplayerGame.new;

singleplayerGame.get_game_name();
singleplayerGame.pause_game();

multiplayerGame.get_game_name();
multiplayerGame.get_server_list();

