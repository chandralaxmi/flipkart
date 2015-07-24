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
niki = Cell.new
niki.occupiedBy=1
class Player
	def initialize(nam,numbe)
		@name=nam
		@number=numbe
	end
	def name
		@name
	end
end
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
puts "Enter Player 1 name "
name=gets.chomp
playe=[]
playe.push(Player.new(name,1))
puts "Enter Player 2 name"
name=gets.chomp
playe.push(Player.new(name,2))
boa=Board.new
#boa.printer
draw=true
n=-1
puts boa.b[0].occupiedBy
while !boa.checkfordraw
	boa.printer
	puts ""
	print playe[0].name
	print  " Chance (Enter number from 1 to 9"
    loop do
     n=gets.chomp
     n=n.to_i
     n=n-1
     if(n<=8 && n>=0 && boa.b[n].occupiedBy==0 )
     break
     else
     puts "Try again"
     end
    end
    boa.b[n].occupiedBy=1
    boa.printer
    if boa.checkforwin(1)
    	puts ""
    	print playe[0].name
    	print " wins"
    	draw=false
        break 
    end
    if boa.checkfordraw
    	draw=true
    	break
    end

    boa.printer
	puts ""
	print playe[1].name
	print  " Chance (Enter number from 1 to 9)"
    loop do
     n=gets.chomp
     n=n.to_i
     n=n-1
     if(n<=8 && n>=0 && boa.b[n].occupiedBy==0 )
     break
     else
     puts "Try again"
     end
    end
    boa.b[n].occupiedBy=2
    boa.printer
    if boa.checkforwin(2)
    	puts ""
    	print playe[1].name
    	print " wins"
    	draw=false
        break 
    end
 end
 if draw==true
 	boa.printer
 	puts "Match Draw"
 end
