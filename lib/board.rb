# rubocop:disable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity

class Board
  attr_accessor :board
  def initialize
    @board = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
    @tokens = 0
  end

  def display
    "
    #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}
    #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}
    #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}
    "
  end

  def update_position(val, token)
    @board[0][0] = token if val == 1
    @board[0][1] = token if val == 2
    @board[0][2] = token if val == 3
    @board[1][0] = token if val == 4
    @board[1][1] = token if val == 5
    @board[1][2] = token if val == 6
    @board[2][0] = token if val == 7
    @board[2][1] = token if val == 8
    @board[2][2] = token if val == 9
    @tokens += 1
    display
  end
end

# rubocop:enable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity
