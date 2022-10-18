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
    damage = comput_damage #renvoi à méthode comput_damage qui permet d'avoir un chiffre aléatoire
    puts "#{damage} points de dommage infligé à #{player.name}"
    player.gets_damage(damage)
  end

  def comput_damage
    return rand(1..6)
  end


end


class Humanplayer < Player #HumanPlayer HERITE de la class Payer

  attr_accessor :weapon_level

  def initialize(user_name)
    @name = user_name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    return "Le joueur #{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def comput_damage
    return rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon}"

    if new_weapon > @weapon_level
      weapon_level = new_weapon
      puts "Youhou, tu as chopé une arme plus forte"
    else 
      puts  "OK Looser, cette arme te sert à rien"
    end
  end

  def search_health_pack
    health_pack = rand(1..6)
    
    if health_pack == 1
      puts "C'est con t'aura pas de point de vie"
    elsif health_pack == 6
      if @life_points + 50 > 100
        @life_points = 100
      else
        @life_points = @life_points + 50
      end

      puts "Bravo tu as gagné +50 PV"

    else
      if @life_points + 80 > 100
        @life_points = 100
      else
        @life_points = @life_points + 80
      end
      
      puts "Beau gosse t'as +80 PV""
    end
  end

end


