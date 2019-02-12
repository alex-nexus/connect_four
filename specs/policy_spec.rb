require 'board'

RSpec.describe Policy do
  let(:board)  { Board.new }
  subject(:policy) { Policy.new(board) }

  describe '#finished?' do
    it { should_not be_finished }
  end
end
