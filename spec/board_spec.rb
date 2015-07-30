require_relative '../board.rb'
RSpec.describe 'Board' do
	before :each do
		@board=Board.new
	end 
	describe "#new" do 
		it "Has 9 Cells" do 
			expect(@board.b.length).to eq 9
		end
	end
	it "checks if winning condition is statisfied " do
		@board.b[0].occupiedBy=1;
		@board.b[1].occupiedBy=1;
		@board.b[2].occupiedBy=1;
		expect(@board.checkforwin(1)).to eq true
		expect(@board.checkforwin(2)).to eq false
	end
    it "checks if there is a draw" do
    	@board.b[0].occupiedBy=1;
		@board.b[1].occupiedBy=1;
    	@board.b[2].occupiedBy=2;
    	@board.b[3].occupiedBy=2;
    	@board.b[4].occupiedBy=2;
    	@board.b[5].occupiedBy=1;
    	@board.b[6].occupiedBy=1;
    	@board.b[7].occupiedBy=2;
    	@board.b[8].occupiedBy=1;
    	expect(@board.checkforwin(1)).to eq false
    	expect(@board.checkforwin(2)).to eq false
    	expect(@board.checkfordraw).to eq true
    end



end
