
require 'bundler'
Bundler.require

#require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0
  
  puts "Voici l'état des joueurs :"
  puts player1.show_state
  puts player2.show_state
  print "\n"
  
  puts "3, 2, 1 let's  go fiiiiiight !"
  puts player1.attacks(player2) 

  if player2.life_points <= 0
    break
  end
  puts player2.attacks(player1)

  print "\n"

end


binding.pry