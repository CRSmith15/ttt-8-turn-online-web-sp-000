def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def valid_move?(board, index)
  spot = nil
  if index.between?(0, 8) && !(position_taken?(board, index))
    spot = true
  else 
    spot 
  end
  spot

end

def position_taken?(board, x)
  taken = nil
  if (board[x] ==  " " || board[x] == "" || board[x] == nil)
     taken = false
  else
     taken = true
  end
  taken
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, token='X')
      display_board(board)
    else
      turn(board)
    end
end