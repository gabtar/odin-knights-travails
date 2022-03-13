# frozen_string_literal: true

##
# Represents a Knight in the board
class Knight
  def initialize
    @posible_moves = [[2, 1],
                      [2, -1],
                      [-2, 1],
                      [-2, -1],
                      [1, 2],
                      [1, -2],
                      [-1, 2],
                      [-1, -2]]
  end

  ##
  # Calculates using BFS the path from +intial_position+ to +final_position+
  def knight_move(initial_position, final_position)
    paths = []
    paths.push([initial_position])

    # Track visited positions for the knight
    visited = Array.new(8) { Array.new(8, false) }

    until paths.empty?
      current_square = paths[0].last

      visited[current_square[0]][current_square[1]] = true

      if current_square == final_position
        # Path found, return last path
        return paths.shift
      end

      # Determine new valid positions for next level of depth
      @posible_moves.each do |position|
        next_move = [current_square[0] + position[0], current_square[1] + position[1]]
        if next_move.all? { |coordinate| coordinate.between?(0, 7) } && !visited[next_move[0]][next_move[1]]
          previous_moves = paths[0]
          paths.push(previous_moves + [next_move])
        end
      end
      # Unquee last path
      paths.shift
    end
  end
end
