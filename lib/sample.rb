# frozen_string_literal: true

require_relative 'knight'
require_relative 'board'

# New Board and Knight
board = Board.new(8, 8)
knight = Knight.new

# Sample move
starting_position = [0, 0]
final_position = [7, 3]

# Get moves list
moves_list = knight.knight_move(starting_position, final_position)
# Draw moves on board
board.print_moves(moves_list)

# Display on output on terminal
puts "Knight from #{starting_position} to #{final_position}:"
puts "You made it in #{moves_list.length - 1} moves!, here is your path:"
moves_list.each { |move| puts move.to_s }
puts '---------------------------'
puts 'Moves: '
puts board
