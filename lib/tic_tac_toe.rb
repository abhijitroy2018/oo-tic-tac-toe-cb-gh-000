# Object-Oriented Tic Tac Toe
class TicTacToe # class starts
  def initialize
    @board = Array.new(9, " ")
  end

  # Nested Array of each Win combination
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  # Current board representation
  def display_board
    puts
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # Converts string user input to board array index
  def input_to_index(user_input)
    user_input.to_i - 1
  end

  # Move the token 'X' or 'O' to user-specified board position
  def move(index, current_player = "X")
    @board[index] = current_player
  end

  # Checks for empty board positions
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  # Checks if the user's move is valid
  def valid_move?(index)
    index.between?(0, 8) && !position_taken?(index)
  end

  # Enacts a single complete turn
  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, current_player(board))
      display_board(board)
    else
      turn(board)
    end
  end
  
    







end # class ends here
