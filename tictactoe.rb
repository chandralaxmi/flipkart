board=['.','.','.','.','.','.','.','.','.']
def win(arr,var)
	if arr[0]==var && arr[1]==var && arr[2]==var
		true
	elsif arr[0]==var && arr[3]==var && arr[6]==var
		true
	elsif arr[0]==var && arr[4]==var && arr[8]==var
		true
	elsif arr[6]==var && arr[4]==var && arr[2]==var
		true
    elsif arr[6]==var && arr[7]==var && arr[8]==var
    	true
    elsif arr[2]==var && arr[5]==var && arr[8]==var
        true
    elsif arr[1]==var && arr[4]==var && arr[7]==var
        true 
    elsif arr[3]==var && arr[4]==var && arr[5]==var
        true
    else 
    	false
    end
end
def draw(arr)
	if arr.include?('.')
		false
	else
        true
    end
end


def pb(arr)
	system ("clear")
i=0
while (i<9)
	puts arr[i] +   arr[i+1] +   arr[i+2]
	i=i+3
end
end
pb(board)
puts "give no. from 1 to 9"
while true
	pb(board)
puts"player1 chance"
while true 


n=gets.chomp
n=n.to_i
if board[n-1]=='.' && n>=1 &&n<=9
board[n-1]='x'
break
else puts" try again"
end
end


if win(board,'x') 
	pb(board)
	puts"player1 wins"
	break
end
if draw(board)
	pb(board)
	puts "match draw"
	
	break
end

pb(board)
puts "player2 chance"

while true


n=gets.chomp
n=n.to_i
if board[n-1]=='.' && n>=1 &&n<=9
	 board[n-1]='y'

	break 
else
	puts"try again"
end
end

if win(board,'y') 
	pb(board)
	puts"player2 wins"

	break
end
end


