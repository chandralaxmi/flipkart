  
#Main function which implements the tictactoe game


module Tictactoe

  require_relative 'player'
  require_relative 'cell'
  require_relative 'board'
# This function gets the player names
  def getPlayerNames(playe)
    puts "Enter Player 1 name "
    name=gets.chomp
    playe.push(Player.new(name,1))
    puts "Enter Player 2 name"
    name=gets.chomp
    playe.push(Player.new(name,2))
  
  end
  #boa.printer
  #This function uses the board methods to play the game
  def play_game(playe)
    boa=Board.new
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
end
end
