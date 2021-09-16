require "./player"
require "./question"
require "./answer"

puts "Player 1: enter your name"
player1 = Player.new(gets.chomp)
puts "Player 2: enter your name"
player2 = Player.new(gets.chomp)

i = 0
while (i)

  if player1.score == 0 || player2.score == 0
    puts "-----GAME OVER-----\nGoodbye!"
    exit
  end

  if i % 2 == 0
    puts "-----NEW TURN-----"
    question = Question.new
    puts "#{player1.name}: #{question.question}"
    userAnswer = gets.chomp
    correctAnswer = question.answer
    answer = Answer.new(userAnswer.to_i, correctAnswer)
    puts answer.checkAnswer
    if answer.checkAnswer != "YES! You are correct."
      player1.score -= 1
    end
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  else
    puts "-----NEW TURN-----"
    question = Question.new
    puts "#{player2.name}: #{question.question}"
    userAnswer = gets.chomp
    correctAnswer = question.answer
    answer = Answer.new(userAnswer.to_i, correctAnswer)
    puts answer.checkAnswer
    if answer.checkAnswer != "YES! You are correct."
      player2.score -= 1
    end
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  end

  i += 1
end