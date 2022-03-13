# frozen_string_literal:true

##
# A simple chess Board
class Board
  attr_accessor :board

  def initialize(row = 8, col = 8)
    @board = Array.new(row) { Array.new(col, ' ') }
  end

  ##
  # Draws the moves on the board
  def print_moves(moves_list)
    moves_list.each_with_index { |move, index| board[move[0]][move[1]] = "\u2658 #{index}".encode('utf-8') }
  end

  def to_s
    string = "    0 1 2 3 4 5 6 7\n"
    string += "    ---------------\n"
    board.each_with_index do |row, index|
      string += "#{index} | "
      row.each { |square| string += "#{square} " }
      string += "\n"
    end
    string
  end
end
