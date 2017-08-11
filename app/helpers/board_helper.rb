module BoardHelper
  def tile_class(coordinate, board)
    info = board.grid[coordinate]
    hit = info[:hit?]
    boat = info[:boat?]

    if hit && boat
      return "strike"
    elsif hit && !boat
      return "miss"
    elsif !hit && boat
      return "boat-piece"
    else
      return "water"
    end
  end

  def update_ship_on_board(params, ship_id, board)
    params[ship_id.to_s]
  end

end
