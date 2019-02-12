class Board
  """
  this class holds the grid of all the slots (player 1, 2 or empty)
  also provide a printing utility function
  """

  EMPTY_SLOT = '_'
  ROWS_COUNT = 6
  COLUMNS_COUNT = 7

  attr_accessor :grid

  def initialize
    @grid = Array.new(ROWS_COUNT) { Array.new(COLUMNS_COUNT) { EMPTY_SLOT } }
  end

  def add_piece(column, player)
    if ca = column_available?(column)
      grid[highest_empty_row(column)][column] = player.mark
    else
      raise 'Column is already full'
    end
  end

  def print_board
    @grid.each do |row|
      print row
      print "\n"
    end
  end

  private

  def column_available?(column)
    grid.map { |row| row[column] }.any? { |slot| slot == EMPTY_SLOT }
  end

  def highest_empty_row(column)
    # return the highest empty row number to which column the player can add a new piece
  end
end
