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
if ask_question("what is 2+2", "4")
   score = score + 1
end
if ask_question("what is 2+3", "5")
  score = score + 1
end
if ask_question("what is 2+4", "6")
  score = score + 1
end
if ask_question("what is 2+5", "7")
  score = score + 1
end
if ask_question("what is 2+6", "8")
  score = score + 1
end
puts "You got " + score.to_s + " questions out of " + 5.to_s
puts score/5.0*100
