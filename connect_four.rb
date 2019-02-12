require_relative 'board'
require_relative 'player'
require_relative 'policy'

class ConnectFour
  def initialize
    @board = Board.new
  end

  def start
    @board.print_board # print for the first time

    loop do
      players.each do |player|
        column = ask_player_where_to_add_piece(player)
        puts(player.name, 'placed at column', column)
        @board.add_piece(column, player)
        @board.print_board

        if Policy.new(@board).finished?
          puts "Player #{player.name} wins. Game Over"
          return
        end
      end
    end
  end

  private

  def ask_player_where_to_add_piece(player)
    puts "#{player.name}, which column do you want to add the piece:"
    input = STDIN.gets.chomp
    return input.to_i - 1
  end

  def players
    @players ||= [
      Player.new('A', 'O'),
      Player.new('B', 'X')
    ]
  end
end
