


#--def shakil_the_dog #(dog)
  #puts "Hello Shakil! How are you?" 
  #dog_input = gets.chomp

  #puts case "woof!"
  #dog_input = gets.chomp

#
#case dog_input

   #puts "woof!" 
      #{}"WOOF WOOF WOOF"
    #when "Shakil stop! || Shakil STOP!" then puts "walks away and you get some peace!"
    #when "meow" then puts "woof woof woof woof woof"  
    #when "?treat" then puts "thinks getting a treat!"
    #when "go away" return "Shakil leaves"
    #else
     # puts "woof!"
    #end

#end

#shakil_the_dog

                                                  #SECOND ATTEMPT 
#def shakil_the_dog
 #puts "What will you say to Shakil"
 #user_input = gets.chomp
 #puts case user_input 
   #when user_input = "./treat" then puts "shakil sits nicely"
   #when "woof" 
   #  "WOOF WOOF WOOF"
   #when "shakil stop" || "SHAKIL STOP" 
    # "moment of peace"
   #when "meow"
   # "woof woof woof woof woof"
  # when "go away"
  #  return
   #when /treat/
     # puts "Shakil is happy"

         #else puts "woof"
 #end
 #if user_input.include?"treat"
    #puts "shakil sits nicely"
#while user_input != "go away"


#end 
# Run our method
#shakil_the_dog



#REAL ANSWER!!!!!!!!


def shakil_the_dog(user_input)
 puts case user_input 
   #when user_input = "./treat" then puts "shakil sits nicely"
      when /treat/
      puts "Shakil is happy"
   when "woof" 
     "WOOF WOOF WOOF"
   when "shakil stop" || "SHAKIL STOP" 
     "moment of peace"
   when "meow"
    "woof woof woof woof woof"
   when "go away"
   exit
   else puts "woof"
 end
end

puts "shakil being shakil"
# Run our method
while
 data = gets.chomp
 shakil_the_dog (data)
end
