require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
  let(:fresh_board) { Board.new }
  let(:fresh_board_display) { "  |   |  \n  |   |  \n  |   |  \n" }
  let(:wrong_board_display) { "  | X |  \n  |   |  \n  |   |  \n" }
  let(:updated_board_at_3) { "  |   | X\n  |   |  \n  |   |  \n" }
  let(:updated_board_at_5) { "  |   |  \n  | O |  \n  |   |  \n" }
  let(:board_state_at_win) { Board.new([['X', ' ', ' '], %w[X O O], ['X', ' ', ' ']]) }
  let(:board_state_at_win_display) { "X |   |  \nX | O | O\nX |   |  \n" }
  let(:wrong_state_at_win_display) { "  |   |  \nX | O | O\nX |   |  \n" }

  describe '#display' do
    it 'returns the current state of a new board' do
      expect(fresh_board.display).to eql(fresh_board_display)
    end

    it 'returns the wrong state of the board' do
        expect(fresh_board.display).to_not eql(wrong_board_display)
    end

    it 'returns the current state of an updated board' do
      expect(board_state_at_win.display).to eql(board_state_at_win_display)
    end

    it 'returns the current state of an updated board' do
        expect(board_state_at_win.display).to_not eql(wrong_state_at_win_display)
      end
  end

  describe '#get_position' do
    it 'returns the current position of the board based on user input' do
      expect(fresh_board.get_position(2)).to eql(' ')
    end

    it 'returns the current position of the board based on user input' do
      expect(fresh_board.get_position(2)).to_not eql('X')
    end
  end

  describe '#update_position' do
    it 'returns the updated position of the board for val 3' do
      expect(fresh_board.update_position(3, 'X')).to eql(updated_board_at_3)
    end

    it 'returns the updated position of the board for val 5' do
      expect(fresh_board.update_position(5, 'O')).to eql(updated_board_at_5)
    end

    it 'returns the updated position of the board for val 3' do
      expect(fresh_board.update_position(3, 'X')).to_not eql(updated_board_at_5)
    end

    it 'returns the updated position of the board for val 5' do
      expect(fresh_board.update_position(5, 'O')).to_not eql(updated_board_at_3)
    end
  end

  describe '#test_win' do
    it 'returns true if user token match win combinations' do
      expect(board_state_at_win.test_win('X')).to be true
    end

    it 'returns false if user does not token match win combinations' do
      expect(board_state_at_win.test_win('O')).to_not be true
    end
  end
end
