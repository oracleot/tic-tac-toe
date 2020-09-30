require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
    let(:board) {Board.new}
    let(:start_board) {"
      |   |  
      |   |  
      |   |  
    "}
    describe "#display" do
        it "returns the current state of the board" do
            expect(board.display).to eql(start_board)
        end
    end
end