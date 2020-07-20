module Questions
  
  MAX_RANGE = 20
  def question

    number_1 = rand(MAX_RANGE)
    number_2 = rand(MAX_RANGE)
    print "What does #{number_1} plus #{number_2} equal? "
    answer = gets.chomp
    puts answer

    answer.to_i == number_1 + number_2 ? true : return
  end

end


class Player
  
  include Questions

  # You can change the number of lives for the game here
  LIVES = 3
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = LIVES
  end

  def life_reduction
    @lives -= 1
  end

end