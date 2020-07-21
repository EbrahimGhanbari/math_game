require './players'
require './question'
require './game'


print "Enter first player name: "
player_1 = Player.new(gets.chomp)
print "Enter second player name: "
player_2 = Player.new(gets.chomp)

new_game = Game.new(player_1, player_2)
new_game.play
new_game.game_over