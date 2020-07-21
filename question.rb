class Question
  
  MAX_RANGE = 20
  def question_maker

    number_1 = rand(MAX_RANGE)
    number_2 = rand(MAX_RANGE)
    print "What does #{number_1} plus #{number_2} equal? "
    answer = gets.chomp
    puts answer

    answer.to_i == number_1 + number_2 ? true : return
  end

end