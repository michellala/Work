class Unit 



attr_reader :health_points, :attack_power


  def initialize (health_points, attack_power)
    #starts with 60 health points
    @health_points = health_points
    #starts with 10 attack power 
    @attack_power = attack_power

    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

#NOTE: FOR TEST 10 I included the below methods (copy and pasted from footman.rb) It passed the test but I'm not sure if it's needed in footman.rb now too...
  def attack!(enemy)
    enemy.damage(attack_power)
    #we need someone to put damage on so that's enemy
 
  end

  def damage(points)

    @health_points = @health_points - points
    #points is the info we need 

  end


end


#note: here there are parameters for initialize because it is based on the health points that are determined locally within each instance of the Unit class (ex. peasant is 35, barracks is 22, etc)

