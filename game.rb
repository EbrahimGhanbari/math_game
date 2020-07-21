
class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def game_over
    puts "GAME OVER"
  end

  def player_switcher(index)
    index == 1 ? index = 0 : index = 1
    return index
  end

  def play 
    index = 1
    new_question = Question.new

    while true

      index = player_switcher(index)
  
      print @players[index].name + " :"
      if new_question.question_maker
        puts "Yes! You are correct!"
      else
        puts "Seriously? NO!"
        @players[index].life_reduction
      end
  
      if @players[index].lives == 0
        index = player_switcher(index)
        puts "#{@players[index].name} wins with score #{@players[index].lives}/3"
        break
      end
  
      puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
      
      puts "----- NEW TURN -----" 
    end
  
  end

end

