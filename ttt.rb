
def throwDices()
    diceStrings = ['| * |', '| : |', '|...|', '|: :|','|:.:|','|:::|']
    myDice = rand(0..5)
    hisDice = rand(0..5)
    puts diceStrings[myDice] + diceStrings[hisDice]
    myPoint, hisPoint = judge(myDice, hisDice)
    return myPoint, hisPoint
end

def judge(myDice, hisDice)
    if myDice > hisDice
        puts "+ 10P ゲット！"
        @myPoint += 10
        @hisPoint -= 10
    elsif myDice < hisDice
         puts "- 10P ( ﾟДﾟ)"
        @myPoint -= 10
        @hisPoint += 10
    else
        puts "引き分け"
    end
    return @myPoint, @hisPoint
end

def main()
    puts "-----------------------------------------------
         \nサイコロゲームへようこそ
         \nルールを説明します
         \n1.スタートで二つのサイコロが表示されます。左があなたの出目、右が相手の出目です。
         \n2.出目の大きい方に+10Point、小さい方に-10Pointされます
         \n3.先に100Pointを達成した方の勝利です
         \n4.最初の持ち点は50Pointです
         \n-----------------------------------------------"    
    @myPoint = 50
    @hisPoint = 50
    round = 1
    until @myPoint == 0 or @myPoint == 100
        puts ""
        puts "ラウンド#{round}"
        puts "エンターでゲームスタート！"
        gets
        @myPoint, @hisPoint = throwDices()
        puts ""
        puts "現在の得点"
        puts "自分:#{@myPoint}" + " " + "相手:#{@hisPoint}"
        puts "-----------------------------------------------"
        round += 1
    end
    if  @myPoint == 100
        puts "勝利！おめでとう"
        puts ""
    else
        puts "残念！またやろう"
        puts ""
    end
end

main()