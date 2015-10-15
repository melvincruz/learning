puts "Welcome to the Ruby Arithmatic Tutor"
puts "what is your name?"
name = gets
puts "Hello, " + name
#puts "Press enter to begin the quiz."
#gets
score = 0
def ask_question(question, correct_answer)
  puts question
  answer = gets.chomp
  if answer == correct_answer
    puts "correct"
    return true
  else
    puts "Wrong! The answer is " + correct_answer
    return false
  end
end
questions = [["what is 2+2","4"], ["what is 2+3","5"], ["what is 2+4","6"], ["what is 2+5","7"], ["what is 2+6","8"]]
questions.each do |x|
  if ask_question(x[0], x[1])
  score = score +1
  end
end


for x in (0..4)
  if ask_question(questions[x], answers[x])
  score = score +1
  end
end
puts "You got " + score.to_s + " questions out of " + 5.to_s
puts score/5.0*100

