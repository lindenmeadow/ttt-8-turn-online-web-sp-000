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

def input_to_index(input)
  input = input.to_i - 1
end


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def move(board, input, value = "X")
  board[input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if input.between(1, 9)
    move(board, input, value)
  else
    puts "Please enter 1-9:"
  end
end
