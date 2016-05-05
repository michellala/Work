
class Peasant < Unit

    # def intialize
    #   super(health_points)
    #   @health_points = 35 

attr_reader :health_points, :attack_power


  def initialize 
    #starts with 60 health points
    @health_points = 35
    #starts with 10 attack power 
    @attack_power = 0

    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

 

end 

#in this one I originally had two parameters beside intialize; this didn't work because I was setting them and defining them 
#I would include parameters if I wanted to have those as something that could be entered 