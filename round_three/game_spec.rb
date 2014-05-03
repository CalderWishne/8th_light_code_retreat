require_relative 'game.rb'

describe "Cell" do
	it "should create a new cell object" do
		Cell.new(alive: true).class.should eq Cell
	end

	context "cell is alive" do
		let(:cell) { Cell.new(alive: true) }
		it "should know if it is alive" do
			cell.alive?.should be_true
		end
	end

	context "cell is dead" do
		let(:cell) { Cell.new(alive: true) }
		it "should be able to die" do
			cell.die!
			expect(cell.alive?).to be_false
		end
	end

	context "cell coordinates" do
		let(:cell) {Cell.new(alive: true, x: 0, y: 1)}
		it "should know its coordinates" do 
			cell.coordinates.should eq [0,1]
		end
	end
end

describe "Board" do
	let(:board) {Board.new(rows: 3, columns: 5)}
	it "should create a new Board object" do
		board.class.should eq Board
	end

	it "should know the cells its size" do
		board.dimensions.should eq [3,5]
	end

	let(:cell) {Cell.new(x: 4, y: 5)}
	it "knows the neighbors of a cell" do
		board.neighbors_of(cell).should eq(
		[
			[5,5], 
			[5,6], 
			[5,4], 
			[4,6], 
			[4,4], 
			[4,5],
			[3,5],
			[3,6],
			[3,4]
		])
	end 
end
















