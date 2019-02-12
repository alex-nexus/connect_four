class Board
  """
  this class holds the grid of all the slots (player 1, 2 or empty)
  also provide a printing utility function
  """

  EMPTY_SLOT = '_'
  ROWS_COUNT = 6
  COLUMNS_COUNT = 7

  def add_piece(column, player)
    if row_number = highest_empty_row(column)
      grid[ROWS_COUNT-row_number-1][column] = player.mark
    else
      raise "Column:#{column}is already full."
    end
  end

  def rows
    grid
  end

  def columns
    # Turn row info columns with transpose
    grid.transpose
  end

  def print_board
    grid.each do |row|
      print row
      print "\n"
    end
  end

  private

  def highest_empty_row(column)
    # return the highest empty row number to which column the player can add a new piece
    grid.reverse.each.with_index do |row, row_index|
      return row_index if row[column] == EMPTY_SLOT
    end
    nil
  end

  def grid
    @grid ||= Array.new(ROWS_COUNT) { Array.new(COLUMNS_COUNT) { EMPTY_SLOT } }
  end
end
