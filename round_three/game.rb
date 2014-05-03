class Cell
	attr_reader :alive, :coordinates

	def initialize(args)
		@alive = args[:alive]
		@coordinates = [args[:x], args[:y]]
	end

	def alive?
		alive
	end

	def die!
		@alive = false
	end
end

class Board

	attr_reader :dimensions

	def initialize(args)
		@dimensions = [args[:rows], args[:columns]]
	end

	def neighbors_of(cell)
		x = cell.coordinates[0]
		y = cell.coordinates[1] # [4,5]
		deltas = [-1, 0, 1]
		new_pairs = []
		deltas.each do |dx|
			deltas.each do |dy|
				new_pairs << [x + dx, y + dy]
			end
		end
		new_pairs.delete(cell.coordinates)
		new_pairs
	end
end

cell = Cell.new(x:4, y: 3)
board = Board.new(rows:10, columns:10)
p board.neighbors_of(cell).inspect
