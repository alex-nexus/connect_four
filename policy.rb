class Policy < Struct.new(:board)
  """
  this policy object determines if the board is in a winning condition
  return true if there is a winner and false otherwise
  (any one player has connected 4 pieces)
  """

  def finished?
    # if any rows, columns or diagnoals have more than 4 connected pieces, then the game is finished
    check_rows && check_columns && check_diagonals
  end

  private

  def check_rows
    board.grid.any? do |row|
      has_4_connected_pieces?(row)
    end
  end

  def check_columns
    # Turn row info columns with transpose
    board.grid.transpose.any? do |col|
      has_4_connected_pieces?(row)
    end
  end

  def check_diagonals
    # a little bit tricky I can work on this later
  end

  def has_4_connected_pieces?(line)
    # return true if the row has more than 4 connected pieces
    # return false otherwise
  end
end
