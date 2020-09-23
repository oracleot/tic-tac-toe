# This handles the updating and display of board
class Board
  # logic goes here
attr_accessor :board
  def initialize
    @board = [
      ['-','-','-'],
      ['-','-','-'],
      ['-','-','-']
    ]
  end
  def display
    a = @board[0][0]
    b = @board[0][1]
    c = @board[0][2]
    d = @board[1][0]
    e = @board[1][1]
    f = @board[1][2]
    g = @board[2][0]
    h = @board[2][1]
    i = @board[2][2]
    "
    #{a} | #{b} | #{c}
    #{d} | #{e} | #{f}
    #{g} | #{h} | #{i}
    "
  end

  def update(&user_input)
    input =  user_input.call
    puts "Your input is #{input} !"
    puts "Your token is #{$player_token} !"
    while input
      
    if input.to_i >= 1 && input.to_i <=9
    if input == 1
      @board[0][0] = $player_token
    elsif input == 2
      @board[0][0] = $player_token
    elsif input == 3
      @board[0][0] = $player_token
    elsif input == 4
      @board[0][0] = $player_token
    elsif input == 5
      @board[0][0] = $player_token
    elsif input == 6
      @board[0][0] = $player_token
    elsif input == 7
      @board[0][0] = $player_token
    elsif input == 8
      @board[0][0] = $player_token
    elsif input == 9
      @board[0][0] = $player_token
    end
  #  unless exist 
  #   puts "Position taken ! Please choose another one :"
  #   input = user_input.call
  #   end
    input = false
    else 
      puts "Please enter a valid position"
      input = user_input.call
    end
    end
  end
end
