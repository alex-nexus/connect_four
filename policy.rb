require 'matrix'

class Policy < Struct.new(:board)
  """
  this policy object determines if the board is in a winning condition
  return true if there is a winner and false otherwise
  (any one player has connected 4 pieces)
  """

  def finished?
    # if any rows, columns or diagnoals have more than 4 connected pieces, then the game is finished
    has_row_with_4_connected? || has_column_with_4_connected? || check_diagonals
  end

  private

  def has_row_with_4_connected?
    board.rows.any? {|row| has_connected_pieces?(row) }
  end

  def has_column_with_4_connected?
    board.columns.any? { |column| has_connected_pieces?(column) }
  end

  def check_diagonals
    print 'check_diagonals'
    # a little bit tricky I can work on this later
  end

  def has_connected_pieces?(all_pieces, count=4)
    # return true if the row has more than 4 connected pieces and false otherwise
    all_pieces.each_cons(count).each do |con_pieces|
      # all pieces are of the same value
      return true if con_pieces.uniq == ['O'] || con_pieces.uniq == ['X']
    end
    false
  end
end
