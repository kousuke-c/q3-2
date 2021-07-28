#引き分けの時に呼ばれるメソッド
def draw(numberOfOpponents,handGestureNumber,handGesture)
    
 #引き分け続ける限りループする   
 while handGesture[numberOfOpponents] == handGesture[handGestureNumber]
     
  puts "あいこで..."
  puts "0（グー）1（チョキ）2（パー）3（戦わない）"
  
  #変数に打ち込んだ数値を代入
  handGestureNumber = gets.chomp.to_i
  #変数にランダムに値を代入
  numberOfOpponents = rand(3).to_i
  
  puts "ショ！"
  puts "--------------------"
  
  #引数で配列を受け取っているのでオブジェクト番号として変数の値を使う
  #配列にそれぞれの変数の値を当てはめることでそれぞれの手を出力
  puts "あなた：#{handGesture[handGestureNumber]}を出しました"
  puts "相手：#{handGesture[numberOfOpponents]}を出しました"
  
  #条件分岐から配列handGestureのオブジェクトが別（勝ち負けが確定）の場合のみsettlementメソッドを呼ぶ 
  if handGesture[numberOfOpponents] != handGesture[handGestureNumber]
   settlement(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
  end
  
 end
end


#勝ち負けが確定したときよび出される
def settlement(handGestureNumber,numberOfOpponents,handGesture)
    
 #条件分岐　相手が勝った場合　
 #勝つ方法はぐー、チョキ、パーでそれぞれ三通りあるのでまとめた
 if (handGesture[numberOfOpponents] == 'グー' && handGesture[handGestureNumber] == 'チョキ') || (handGesture[numberOfOpponents] == 'チョキ' && handGesture[handGestureNumber] == 'パー') || (handGesture[numberOfOpponents] == 'パー' && handGesture[handGestureNumber] == 'グー')  
  
  puts '相手の勝ち'
  puts "--------------------"
  
#次のメソッドで使う変数
  lastRule = "1"
  
#自分が勝った場合
 elsif (handGesture[numberOfOpponents] == 'チョキ' && handGesture[handGestureNumber] == 'グー') || (handGesture[numberOfOpponents] == 'パー' && handGesture[handGestureNumber] == 'チョキ') || (handGesture[numberOfOpponents] == 'グー' && handGesture[handGestureNumber] == 'パー')  
  
  puts 'あなたの勝ち'
  puts "--------------------"
  
  lastRule = "2"
  
 end
 
 #最後にあっち向いてホイのメソッドを呼ぶ
 #変数lasyRuleを引数に渡す
  fingerPoint(lastRule)
end


#あっち向いてホイを実行するためのメソッド
def fingerPoint(lastRule)
    
 puts "あっち向いて〜"
 puts "0(上)1(下)2(左)3(右)"
 
 direction = ["上","下","左","右"]
 
 #変数に代入
 yourPointNumber = gets.chomp.to_i
 opponentsPointNumber = rand(4).to_i
 
 puts "ホイ！"
 puts "--------------------"
 
 #条件分岐でlastRuleを使う
 #あっち向いてホイをする上でどちらが指をさしているのか判別するために用意した
 case lastRule
 #自分がジャンケンで負けたときは自分が顔を向ける
 when "1"
     
 puts "あなた：#{direction[yourPointNumber]}に顔を向けた"
 puts "相手：#{direction[opponentsPointNumber]}をゆびさした"
 
 #==になったときに指をさしていた方が勝ち
  if direction[yourPointNumber] == direction[opponentsPointNumber]
   puts "相手の勝ち"
 #勝ち負けが決まらない場合はjankenメソッドを呼び出しジャンケンからやり直す
  elsif direction[yourPointNumber] != direction[opponentsPointNumber]
   janken
  end
  
  #ジャンケンで勝っていたとき
 when "2"
     
  puts "あなた：#{direction[yourPointNumber]}をゆびさした"
  puts "相手：#{direction[opponentsPointNumber]}に顔を向けた"
  
  if direction[yourPointNumber] == direction[opponentsPointNumber]
   puts "あなたの勝ち"
  elsif direction[yourPointNumber] != direction[opponentsPointNumber]
   janken
  end
  
 end
end


#最初によばれるメソッド
#一回目のジャンケンをする
def janken
    
 puts "ジャンケン..."
 puts "0（グー）1（チョキ）2（パー）3（戦わない）"
 
#変数に値を代入
 handGestureNumber = gets.chomp.to_i
 numberOfOpponents = rand(3).to_i
#配列に手の形を代入
 handGesture = ['グー','チョキ','パー']

 puts "ほい！"
 puts "--------------------"
 
#出した手を配列とオブジェクト番号から出力
 puts "あなた：#{handGesture[handGestureNumber]}を出しました"
 puts "相手：#{handGesture[numberOfOpponents]}を出しました"

#条件分岐から引き分けの場合はdrawメソッドを呼ぶ
 if handGesture[numberOfOpponents] == handGesture[handGestureNumber]
  draw(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
  #勝ち負けが決まったらsettlementメソッドを呼ぶ
 else handGesture[numberOfOpponents] != handGesture[handGestureNumber]
  settlement(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
 end
 
end

#最初にこのメソッドを呼び出す
janken