

print "Enter first player name: "
player_1 = Player.new(gets.chomp)
print "Enter second player name: "
player_2 = Player.new(gets.chomp)

players = [player_1, player_2]

index = 1

while true

  #this switch btw players
  index == 1 ? index = 0 : index = 1

  print players[index].name + " :"
  if players[index].question
    puts "Yes! You are correct!"
  else
    puts "Seriously? NO!"
    players[index].life_reduction
  end

  
  if players[index].lives == 0
    index == 1 ? index = 0 : index = 1
    puts "#{players[index].name} wins with score #{players[index].lives}/3"
    break
  end

  puts "#{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3"
  
  puts "----- NEW TURN -----" 
end

puts "GAME OVER"