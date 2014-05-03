class Cell
	attr_reader :x_coord, :y_coord
	def initialize(x, y)
		@x_coord = x
		@y_coord = y
	end

	def coords
		[x_coord,y_coord]
	end

	def set_alive
		@alive = true
	end

	def alive?
		@alive
	end

	def kill
		"Your dead."
	end

	def dead?
		true
	end

	def neighbors
		["I'm a neighbor"]

	end
end