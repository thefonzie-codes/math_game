require "./classes/Player"
require "./classes/Question"

puts "Hi player 1, what is your name?"
p1 = Player.new gets.chomp
puts "Got it, so your name is #{p1.name}"

puts "Hi player 2, what is your name?"
p2 = Player.new gets.chomp
puts "Got it, so your name is #{p2.name}"

puts "Let's start!"

while p1.score > 0 && p2.score > 0

  q1 = Question.new
  puts "#{p1.name} : #{q1.ask}"

  ans1 = gets.chomp.to_i
  if ans1 == q1.answer 
    puts "CORRECT! \n #{p1.name}: #{p1.score}/3"
  else
    p1.reduceScore
    puts "INCORRECT ! \n #{p1.name}: #{p1.score}/3"
  end

  q2 = Question.new
  puts "#{p2.name} : #{q2.ask}"

  ans2 = gets.chomp.to_i
  if ans2 == q2.answer 
    puts "CORRECT! \n #{p2.name}: #{p2.score}/3"
  else
    p2.reduceScore
    puts "INCORRECT! \n #{p2.name}: #{p2.score}/3"
  end

end

if p1.score == 0
  puts "#{p2.name} wins with a score of #{p2.score}/3"
else
  puts "#{p1.name} wins with a score of #{p1.score}/3"
end

puts "=== GAME OVER ==="
puts "see you next time!"