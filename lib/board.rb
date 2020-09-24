# rubocop:disable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity,Metrics/AbcSize

class Board
  attr_accessor :board
  attr_reader :tokens
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

  def validate_position(my_board, &get_input)
    validated = false
    until validated
      puts 'Provide a valid position between 1 and 9 and not taken'
      begin
        pos = Integer(get_input.call)
      rescue StandardError
        puts 'Provide a valid integer'
        retry
      end
      validated = true if pos < 10 && my_board.get_position(pos) == ' '
    end
    pos
  end

  def get_position(val)
    current_position = @board[0][0] if val == 1
    current_position = @board[0][1] if val == 2
    current_position = @board[0][2] if val == 3
    current_position = @board[1][0] if val == 4
    current_position = @board[1][1] if val == 5
    current_position = @board[1][2] if val == 6
    current_position = @board[2][0] if val == 7
    current_position = @board[2][1] if val == 8
    current_position = @board[2][2] if val == 9
    current_position
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

  def test_win(token)
    win_arr = [
      [@board[0][0], @board[0][1], @board[0][2]],
      [@board[1][0], @board[1][1], @board[1][2]],
      [@board[2][0], @board[2][1], @board[2][2]],
      [@board[0][0], @board[1][0], @board[2][0]],
      [@board[0][1], @board[1][1], @board[2][1]],
      [@board[0][2], @board[1][2], @board[2][2]],
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[0][2], @board[1][1], @board[2][0]]
    ]
    win_arr.each do |combination|
      result = combination.all? do |test|
        test == token
      end
      next unless result

      return true
    end
    false
  end
end

# rubocop:enable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity,Metrics/AbcSize
