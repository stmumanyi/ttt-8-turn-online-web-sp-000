def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input = converted_input - 1
  return converted_input
end
def move(board, index, character = "X")
  board[index] = character
end
def valid_move?(board, index)
  def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
  return false
  else
  return true
  end
  end 
  def within_board(index)
  if index.between?(0,8) == true
    return true
  else
    false
  end
  end
  if position_taken?(board, index) == false && within_board(index) == true
    return true
  else
    return false
  end 
end
def turn(board)
  