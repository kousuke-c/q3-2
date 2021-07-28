puts "ジャンケン..."
puts "0（グー）1（チョキ）2（パー）3（戦わない）"

handGestureNumber = gets.chomp.to_s


puts "ほい！"
puts "--------------------"
case handGestureNumber
when '0'
    handGestureYou = 'グーを出しました'
when '1'
    handGestureYou = 'チョキを出しました'
when '2'
    handGestureYou = 'パーを出しました'
end
puts "あなた：#{handGestureYou}"
numberOfOpponents = rand(2).to_s

case numberOfOpponents
when '0'
    handGesture = 'グーを出しました'
when '1'
    handGesture = 'チョキを出しました'
when '2'
    handGesture = 'パーを出しました'
end
puts "相手：#{handGesture}"

if numberOfOpponents == handGestureNumber 
   draw
else numberOfOpponents != handGestureNumber 
　　settlement
　　 end
    

 def draw
  while numberOfOpponents == handGestureNumber 
　       
　　puts 'あいこで'
　　puts "0（グー）1（チョキ）2（パー）3（戦わない）"
 　handGestureNumber = gets.chomp.to_s

　　puts "ショ！"
　　puts "--------------------"
　　
　  case handGestureNumber
　  when'0'
     handGestureYou = 'グーを出しました'
　  when '1'
     handGestureYou = 'チョキを出しました'
  　when '2'
     handGestureYou = 'パーを出しました'
　  end
　  
　 　puts "あなた：#{handGestureYou}"
　 　numberOfOpponents = rand(2).to_s

　  case numberOfOpponents
　  when '0'
     handGesture = 'グーを出しました'
　  when '1'
     handGesture = 'チョキを出しました'
 　 when '2'
     handGesture = 'パーを出しました'
　  end
　　puts "相手：#{handGesture}"
　　if numberOfOpponents != handGestureNumber 
　  settlement
　　 end
　end
 end
 
 def settlement
  
    if (numberOfOpponents == '0' && handGestureNumber == '1') || (numberOfOpponents == '1' && handGestureNumber == '2') || (numberOfOpponents == '2' && handGestureNumber == '0')  
     puts '相手の勝ち'
    elsif (numberOfOpponents == '1' && handGestureNumber == '0') || (numberOfOpponents == '2' && handGestureNumber == '1') || (numberOfOpponents == '0' && handGestureNumber == '2')  
     puts　'あなたの勝ち'
    end
 end

