require 'board'

RSpec.describe Board do
  let(:board)  { Board.new }
  let(:player1) { Player.new('A', 'X') }
  let(:player2) { Player.new('A', 'X') }

  describe '#print' do
    it 'prints the boards on screen' do
      board.print
    end
  end

  describe '#add_piece' do
    it "allows to add 1 piece" do
      board.add_piece(0, player)
    end
  end
end
