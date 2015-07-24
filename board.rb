require_relative 'cell'
class Board
	
	def initialize
		@b=[]
		0.upto(8) {@b.push(Cell.new)}
    end
    def b
    	@b
    end
    def printer
    	#puts ""
    	system("clear")
    	0.upto(2){ |x| 
    	case
    	when @b[x].occupiedBy==1
    		print "x "
    	when @b[x].occupiedBy==2
    		print "y "
    	else
    		print ". "
    	end
    	}
    	puts ""
    	3.upto(5){ |x| 
    	case
    	when @b[x].occupiedBy==1
    		print "x "
    	when @b[x].occupiedBy==2
    		print "y "
    	else
    		print ". "
    	end
    	}
    	puts "" 
    	6.upto(8){ |x| 
    	case
    	when @b[x].occupiedBy==1
    		print "x "
    	when @b[x].occupiedBy==2
    		print "y "
    	else
    		print ". "
    	end
    	}
    	puts ""	
    end
    def checkforwin(var)
    		case
            when @b[0].occupiedBy==var && @b[1].occupiedBy==var && @b[2].occupiedBy==var
		    		true
			when @b[3].occupiedBy==var && @b[4].occupiedBy==var && @b[5].occupiedBy==var
					true
	        when @b[6].occupiedBy==var && @b[7].occupiedBy==var && @b[8].occupiedBy==var
		       	true
	        when @b[0].occupiedBy==var && @b[3].occupiedBy==var && @b[6].occupiedBy==var
		         true
            when @b[1].occupiedBy==var && @b[4].occupiedBy==var && @b[7].occupiedBy==var
            	true
            when @b[2].occupiedBy==var && @b[5].occupiedBy==var && @b[8].occupiedBy==var
            	true
            when @b[0].occupiedBy==var && @b[4].occupiedBy==var && @b[8].occupiedBy==var
            	true
            when @b[2].occupiedBy==var && @b[4].occupiedBy==var && @b[6].occupiedBy==var
            	true
            else
            	false
            end
    	end	
    def checkfordraw
    	flag=0
    	0.upto(8){|x| 
    		if @b[x].occupiedBy==0 
               flag=1
               break
            end
        }
    	case 
    		when flag==1
    			false
    		else
    			true
    		end	
    	end
    	
end
