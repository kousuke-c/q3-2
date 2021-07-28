def draw(numberOfOpponents,handGestureNumber,handGesture)
    
  while handGesture[numberOfOpponents] == handGesture[handGestureNumber]
    
    puts "あいこで..."
    puts "0（グー）1（チョキ）2（パー）3（戦わない）"
    handGestureNumber = gets.chomp.to_i
    numberOfOpponents = rand(3).to_i
    puts "ショ！"
    puts "--------------------"
    
    puts "あなた：#{handGesture[handGestureNumber]}を出しました"
    puts "相手：#{handGesture[numberOfOpponents]}を出しました"
    
    if handGesture[numberOfOpponents] != handGesture[handGestureNumber]
     settlement(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
    end
  end
end

def settlement(handGestureNumber,numberOfOpponents,handGesture)
    
    if (handGesture[numberOfOpponents] == 'グー' && handGesture[handGestureNumber] == 'チョキ') || (handGesture[numberOfOpponents] == 'チョキ' && handGesture[handGestureNumber] == 'パー') || (handGesture[numberOfOpponents] == 'パー' && handGesture[handGestureNumber] == 'グー')  
     puts '相手の勝ち'
     puts "--------------------"
     fingerPointOpponents
    elsif (handGesture[numberOfOpponents] == 'チョキ' && handGesture[handGestureNumber] == 'グー') || (handGesture[numberOfOpponents] == 'パー' && handGesture[handGestureNumber] == 'チョキ') || (handGesture[numberOfOpponents] == 'グー' && handGesture[handGestureNumber] == 'パー')  
     puts 'あなたの勝ち'
     puts "--------------------"
     fingerPointYou
    end
end

def fingerPointYou
puts "あっち向いて〜"
puts "0(上)1(下)2(左)3(右)"
direction = ["上","下","左","右"]
yourPointNumber = gets.chomp.to_i
opponentsPointNumber = rand(4).to_i
puts "ホイ！"
puts "--------------------"
puts "あなた：#{direction[yourPointNumber]}をゆびさした"
puts "相手：#{direction[opponentsPointNumber]}に顔を向けた"
if direction[yourPointNumber] == direction[opponentsPointNumber]
 puts "あなたの勝ち"
elsif direction[yourPointNumber] != direction[opponentsPointNumber]
 janken
end
end

def fingerPointOpponents
puts "あっち向いて〜"
puts "0(上)1(下)2(左)3(右)"
direction = ["上","下","左","右"]
yourPointNumber = gets.chomp.to_i
opponentsPointNumber = rand(4).to_i
puts "ホイ！"
puts "--------------------"
puts "あなた：#{direction[yourPointNumber]}に顔を向けた"
puts "相手：#{direction[opponentsPointNumber]}をゆびさした"
if direction[yourPointNumber] == direction[opponentsPointNumber]
 puts "相手の勝ち"
elsif direction[yourPointNumber] != direction[opponentsPointNumber]
 janken
end
end

def janken
    

puts "ジャンケン..."
puts "0（グー）1（チョキ）2（パー）3（戦わない）"

handGestureNumber = gets.chomp.to_i
numberOfOpponents = rand(3).to_i
handGesture = ['グー','チョキ','パー']

puts "ほい！"
puts "--------------------"
 

puts "あなた：#{handGesture[handGestureNumber]}を出しました"
puts "相手：#{handGesture[numberOfOpponents]}を出しました"


if handGesture[numberOfOpponents] == handGesture[handGestureNumber]
  draw(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
else handGesture[numberOfOpponents] != handGesture[handGestureNumber]
  settlement(handGestureNumber,numberOfOpponents,['グー','チョキ','パー'])
end
    
end

janken