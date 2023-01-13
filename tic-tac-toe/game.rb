require_relative "helpers/tools.rb"
include Tools

# initialize the board with empty layout
board = [" "," "," "," "," "," "," "," "," "]

# Declare the players constants and winning rules combinations
PLAYER_ONE = "X"
PLAYER_TWO = "O"

WINS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],  # <-- Horizontal wins
  [0, 3, 6], [1, 4, 7], [2, 5, 8],  # <-- Vertical wins
  [0, 4, 8], [2, 4, 6],             # <-- Diagonal wins
]

puts "Welcome to the Tic Tac Toe Board Game 😋"

Tools.display_board(board)

while true do
	players = [PLAYER_ONE, PLAYER_TWO]
	player = switch_player(players.sample)
	puts "Player #{player} Please make your move on the board : (1-9) "
	user_input = gets.chomp
	# puts user_input

	if Tools.check_user_input(user_input)
		# puts $message
		user_input = user_input.to_i
		if Tools.check_valid_move_update(board, user_input, player)
				puts $pick_message
				Tools.display_board(board)
				if Tools.has_winner(board, player)
						puts "Congratulations! Player #{player} Won.🏆️"
						return
				end
				if Tools.is_board_full(board)
						puts "Its a draw game.🤡"
						return
				end
		else
				puts $invalid_message
				Tools.display_board(board)
		end
	else
			puts $message
	end    
end
