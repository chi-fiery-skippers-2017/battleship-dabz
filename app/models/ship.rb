class Ship < ApplicationRecord
  belongs_to  :ship_type
  belongs_to  :board



  def all_coordinates
    start = self.start_point
    offset = self.ship_type.squares
    orientation = self.orientation
    counter = 1
    coordinates = [start]


    if orientation == "vertical"
      y_axis = start[0]
      until counter == offset
        y_axis = y_axis.next
        coordinates << y_axis + start[1]
        counter += 1
      end
    else
      x_axis = start[1]
      until counter == offset
        x_axis = x_axis.next
        coordinates << start[0] + x_axis
        counter += 1
      end
    end
    coordinates
  end


  # def boat?
  #   self.ships.each do |ship|
  #     start = ship.start_point
  #     offset = ship.ship_type.squares
  #     orientation = ship.orientation

  #     if orientation == "horizontal"
  #       self.grid[start][:boat?] = true
  #       coordinate = start.split("")
  #       offset.times do
  #         coordinate[1] = coordinate[1].to_i + 1
  #         self.grid[coordinate.join][:boat?] = true
  #       end

  #     end
  #   end
  # end
end
