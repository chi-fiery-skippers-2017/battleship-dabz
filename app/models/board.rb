class Board < ApplicationRecord
  belongs_to  :player, class_name: "User"
  belongs_to  :game
  has_many  :ships
  has_many  :shots

  attr_reader :grid, :x_axis_letters, :y_axis_numbers
  after_initialize :generate_board

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
    # boat?
  end

  # private
  def add_to_grid(coordinate)
    # Takes in coordinate and adds them to the boards grid.
    self.grid[coordinate] = { hit?: hit?(coordinate),
                              boat?: false,
                              }
  end

  def hit?(check)

    if hit_coordinates(check)
      true
    else
      false
    end

  end

  def hit_coordinates(check)
    self.shots.find do |shot|
      shot.coordinate == check
    end
  end

  # def boat?
  #   # p self.ships.count
  #   self.ships.each do |ship|
  #     start = ship.start_point
  #     offset = ship.ship_type.squares
  #     orientation = ship.orientation
  #
  #     if orientation == "horizontal"
  #       self.grid[start][:boat?] = true
  #       coordinate = start.split("")
  #       offset.times do
  #         coordinate[1] = coordinate[1].to_i + 1
  #         self.grid[coordinate.join][:boat?] = true
  #       end
  #
  #     end
  #   end
  # end
end
