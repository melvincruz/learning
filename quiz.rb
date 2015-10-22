class Question
  attr_reader :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end


  def self.make_addition(n1, n2)
    return Question.new("What is " + n1.to_s + "+" + n2.to_s + "?", (n1+n2).to_s)
  end

  def self.make_random_addition
    n1 = rand(10)
    n2 = rand(10)
    return Question.new("What is " + n1.to_s + "+" + n2.to_s + "?", (n1+n2).to_s)
 end


  def ask
    puts @question
    input = gets.chomp
    if input == @answer
      puts "correct"
      return true
    else
      puts "Wrong! The answer is " + @answer
      return false
    end
  end
end


puts "Welcome to the Ruby Arithmatic Tutor"
puts "what is your name?"
name = gets
puts "Hello, " + name
#puts "Press enter to begin the quiz."
#gets
score = 0

questions = 3

questions.times do 
  x = Question.make_random_addition
  if x.ask
    score = score+1
  end
end


puts "You got " + score.to_s + " questions out of " + questions.to_s
puts score/ questions.to_f*100


