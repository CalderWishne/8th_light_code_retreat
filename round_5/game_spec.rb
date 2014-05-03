require_relative 'game'

describe "cell" do
	before(:each) do
		@cell = Cell.new(1, 2)
		@cell2 = Cell.new(2, 2)
	end

	it "create a cell" do
		Cell.new(0,0).class.should eq Cell 
		@cell.x_coord.should eq 1
		@cell.y_coord.should eq 2
	end

	it "takes a set of coordinates" do
		@cell.method(:initialize).arity.should eq 2
	end

	it "knows its coordinates" do
		@cell.coords.should eq [1,2]
		@cell2.coords.should eq [2,2]
	end

	
	
	it "knows it's alive" do
		@cell.set_alive
		@cell.should be_alive
	end

	it "knows it's dead" do
		@cell.kill
		@cell.should be_dead
	end


	it "should have a neighbor" do
		@cell.neighbors.should_not be_empty
	end

	it "should never never have more than 8 neighbors" do
		@cell.neighbors.length.should be <= 8
	end


end