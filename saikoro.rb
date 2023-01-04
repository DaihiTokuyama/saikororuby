
def throwDices(score)
	me1 = rand(0..5).to_i
	me2 = rand(0..5).to_i
	showDices( me1, me2 )
	score = checkPoints( me1, me2, score )
	return score
end

def showDices( a, b )
	diceStrings = ['| * |', '| : |', '|...|', '|: :|','|:.:|','|:::|']
    puts diceStrings[a] + diceStrings[b]
end

def checkPoints( a, b, score )
	bet = 5
	c = a + b + 2
	if ( c%2 == 0 ) then
		if ( a == b ) then
			score += bet*2
			puts 'あなたは　' + (bet*2).to_s + '$　勝ちました。'
		else 
			score += bet
			puts 'あなたは ' + bet.to_s + '$　勝ちました。'
		end
	else
		if( c == 7 )
			score -= bet*15
			puts 'あなたは　' + (bet*15).to_s + '$　負けました。'
		else
			score -= bet*10
			puts 'あなたは ' + (bet*10).to_s + '$　負けました。'
		end
	end
	puts 'あなたの持ち金は' + score.to_s + '$　です。'
	return score
end

def main()
	score = 100
	while ( score > 0 ) do
        puts ''
		puts 'エンターキーでゲームを開始'
        gets
		score = throwDices(score)
	end
	puts 'あなたのお金はなくなりました。ゲームオーバーです。'
end
main()