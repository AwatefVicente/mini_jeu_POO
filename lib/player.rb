require 'pry'

class Player

  attr_accessor :name, :life_points

  def initialize(user_name)
    @name = user_name
    @life_points = 10
  end

  def show_state
    return "Le joueur #{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
    return "le joueur #{@name} a été tué !" if @life_points <= 0
    return "Plus que #{@life_points} points de vie pour #{name}"
  end
  
  def attacks(player)
    puts "le joueur #{@name} attaque le joueur #{player.name}"
    damage = comput_damage
    puts "#{damage} points de dommage infligé à #{player.name}"
    player.gets_damage(damage)
  end

  def comput_damage
    return rand(1..6)
  end


end


