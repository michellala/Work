class Barracks

  attr_reader :gold,:food 



  def initialize
      #starts with 1000 gold resources
      @gold = 1000
      #starts with 80 food resources 
      @food = 80
    end

    def train_footman
      #if he trains a footman it costs him 135 gold
      if can_train_footman?
        @gold = @gold-135
        @food = @food-2
        @footman = Footman.new

      else
        return nil

      end
    end 

    def can_train_footman?
     #if he has 135 gold and 2 food then he can train a footman 
     self.gold >=135 && self.food >=2
   end

   def train_peasant
      #if he trains a footman it costs him 135 gold
      if can_train_peasant?
        @gold = @gold-90
        @food = @food-5
        @peasant = Peasant.new

      else
        return nil 
      end
    end

    def can_train_peasant?
      
     self.gold >=90 && 
     self.food >=5 
     

     

   end 
end

#train_peasant: test_09 the last two said that I had to make it return nil if they don't have enough resources to train and then the last test said to return true if they could. So even though it was two tests I was able to fix it by just creating and if/else statement 














