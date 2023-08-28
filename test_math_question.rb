require './math_question.rb'

question = MathQuestion.new
puts question.question

user_answer = gets.chomp
puts question.correct_answer?(user_answer) ? "Yes! You are correct." : "Seriously? No!"
