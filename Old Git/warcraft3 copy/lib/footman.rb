# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit 

  attr_reader :health_points, :attack_power


  def initialize
    #starts with 60 health points
    @health_points = 60
    #starts with 10 attack power 
    @attack_power = 10

    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

#NOTE: IN TEST 10 I had to copy the below (attack and damge) into unit. If one of my tests doesn't run now (test07) then this might be why. But i checked test 07 and it's ok, but I am keeping this here in case it affects something I missed.. It works with it both commented in and out.. 
  # def attack!(enemy)
  #   enemy.damage(attack_power)
  #   #we need someone to put damage on so that's enemy
 
  # end

  # def damage(points)

  #   @health_points = @health_points - points
  #   #points is the info we need 

  # end




   #deals 10AP to enemy unit 

  

end

#   1. It 'calls attacke property"
#   2. Enemy = footsoldier.new
#   3. Expect(enemy).to receive (:damage).with(10)
#   4. Subject.attack!(enemy)
# end

# In this case enemy is the stub because I see that  line 4 is not an assertion, which means that wherever the assertion is that it has to be the stub 


# enemy.attack(10)

# enemy.attack(x, y)

# damage
#   @attack_power=10 
