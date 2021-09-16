class Answer
  attr_accessor :userAnswer, :correctAnswer

  def initialize(userAnswer, correctAnswer)
    @userAnswer = userAnswer
    @correctAnswer = correctAnswer
  end
  
  def checkAnswer
    if userAnswer == correctAnswer
      "YES! You are correct."
    else
      "Seriously? No!"
    end
  end

end