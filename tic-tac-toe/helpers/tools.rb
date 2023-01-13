module Tools
  # Display the Board
  def display_board(board)
    seperator = "-" * 13
    puts "\t#{seperator}"
    puts "\t|#{board[0]}  | #{board[1]} | #{board[2]} |"
    puts "\t#{seperator}"
    puts "\t|#{board[3]}  | #{board[4]} | #{board[5]} |"
    puts "\t#{seperator}"
    puts "\t|#{board[6]}  | #{board[7]} | #{board[8]} |"
    puts "\t#{seperator}"
  end


  # Check if the player inputs are valid
  def check_user_input(user_input)
    check_number = "123456789"
    if check_number.chars.include?(user_input)
        return user_input
    else
        $message ="Please enter a valid character."
        return   
    end
  end

  # Check valid move
  def check_valid_move_update(board, user_input, player)
    # p board
    if !board[user_input - 1].strip.empty?
        player = switch_player(player)
        $invalid_message = "The move has already taken.😏"
        return false
    else
        $pick_message = "Player #{player} : You have picked #{user_input} on the board."
        board[user_input - 1] = player
    end
  end


  # switch the player turns
  def switch_player(player)
    if($player == PLAYER_ONE)
        $player = PLAYER_TWO
    else
        $player = PLAYER_ONE
    end
  end

  # values_at returns the values for the corresponding indices 
  # (* transforms the indices array to a list of arguments, so values_at(*[0,1,2]) becomes values_at(0,1,2)). 
  # The block's 2nd line then checks whether these values are all 'X', or all 'O'. 
  # Once this evaluates to true, the loop breaks and find returns the matching element.
  # (or nil if there was no match)

  # Decide the winner
  def has_winner(board, player)
    WINS.find do |indices|
        values = board.values_at(*indices)
        values.all?('X') || values.all?('O')
    end
    # if board[0] == board[1] && board[1] == board[2] && board[2] == board[0] && board[0] == player
    #     return true
    # elsif board[3] == board[4] && board[4] == board[5] && board[5] == board[3] && board[3] == player
    #     return true
    # else
    #     return false
    # end
  end

  # check if the board is full or not
  def is_board_full(board)
    board.all? { |field| field == "X" || field == "O" }
  end
end
