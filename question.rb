class Question
  attr_reader :num1, :num2, :question, :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{self.num1} plus #{self.num2} equal?"
    @answer = self.num1 + self.num2
  end
end