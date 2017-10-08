def display_board(board)
  i = 0
  loop do
  puts " "+ board[i] + " | " + board[i+1] + " | " + board[i+2] + " "
  i = i + 3
  if i >= board.length-2
    break
  end
  puts "------------"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  str = gets.chomp

  if (position_taken?(board,str.to_i))
    input_to_index(str)
  else
    turn(board)
  end
end

def doublecheck_turn(board)
  puts "Please enter 1-9:"
  str = gets
  input_to_index(str)
end

def input_to_index(str)
  if str.class == "Fixnum"
    return (str.to_i - 1)
  else
    return -1
  end
end

def valid_move?(board, int)
  if int < 0 || int > 9 then false
  else
    if position_taken?(board,int) then false
    else true
    end
  end
end

def position_taken?(board,int)
  if board[int] == "" || board[int] == nil then false
  else true
  end
end

def move(board, index, token)
  board[index] = token;
end
