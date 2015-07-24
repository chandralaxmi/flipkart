class Cell
	def initialize
		@occupiedBy=0
	end
	def occupiedBy
		@occupiedBy
	end
	def occupiedBy=some
		if some==1 || some==2
		@occupiedBy=some 
		else
		puts "Player can only be 1 or 2"
		end
		end
		end
