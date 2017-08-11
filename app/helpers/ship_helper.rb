module ShipHelper 

	def generate_ships(board)
		ships = []
		ShipType.all.each do |type|
			ships << Ship.create(ship_type: type, board: board)
		end
		ships
	end

	# def find_orientation(start_point)

	# end

end