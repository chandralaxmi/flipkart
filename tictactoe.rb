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
i=0
while (i<9)
	puts arr[i] +   arr[i+1] +   arr[i+2]
	i=i+3
end
end
pb(board)
while true
while true 
print"player1 chance"
n=gets.chomp
n=n.to_i
if board[n-1]=='.'
board[n-1]='x'
break
else puts" try again"
end
end

pb(board)
if win(board,'x') 
	puts"player1 wins"
	break
end
if draw(board)
	puts "match draw"
	break
end



while true
print"player2 chance"
n=gets.chomp
n=n.to_i
if board[n-1]=='.'
	 board[n-1]='y'

	break 
else
	puts"try again"
end
end
pb(board)
if win(board,'y') 
	puts"player2 wins"
	break
end
end


