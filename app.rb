
require 'bundler'
Bundler.require

#require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 =Player.new("José")

puts "Voici l'état des joueurs :"
puts player1.show_state
puts player2.show_state



while player1.life_points > 0 && player2.life_points > 0 do
  puts "3, 2, 1 let's  go fiiiiiight !"
  player2.attacks(player1)
  player1.life_points > 0 ? 

  player1.attacks(player2)

  break

end




binding.pry