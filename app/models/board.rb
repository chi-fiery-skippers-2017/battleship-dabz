class Board < ApplicationRecord
  attr_reader :grid, :x_axis_letters, :y_axis_numbers
  after_create :generate_board

  private
  def generate_board
    # Generates a board hash after the board object has been added to the database.
    @x_axis_letters = %w(a b c d e f g h i j)
    @y_axis_numbers = %w(0 1 2 3 4 5 6 7 8 9)

    @grid = {}

    @x_axis_letters.each do |x|
      @y_axis_numbers.each do |y|
        add_to_grid(x + y) # x + y will eval to: a1, b7 etc...
      end
    end
  end

  def add_to_grid(coordinates)
    # Takes in coordinates and adds them to the boards grid.
    self.grid[coordinates] = { hit?: false,
                               boat?: false,
                               }
  end

end
