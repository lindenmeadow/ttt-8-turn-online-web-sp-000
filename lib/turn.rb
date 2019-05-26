def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if board[index].between(0, 8) && board[index] == " "
    return true
  else
    return false
  end
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, input, value = "X")
  board[input] = value
end

def turn(board, input)
  print "Please enter 1-9:"
  input_to_index(input)
  if input.between(1, 9)
    move
  else
    puts "Please enter 1-9:"
  end
end
