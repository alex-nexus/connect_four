require_relative '../board'
require_relative '../player'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:player1) { Player.new('A', 'X') }
  let(:player2) { Player.new('B', 'O') }

  describe '#print_board' do
    it 'prints the empty board on screen' do
      board.print_board
    end
  end

  describe '#add_piece' do
    it "allows to add 1 piece" do
      board.add_piece(0, player1)
      board.add_piece(1, player2)
      board.print_board
    end
  end
end
