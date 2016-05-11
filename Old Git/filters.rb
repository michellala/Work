# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
#require 'pry-byebug'

def find(id)
  @candidates.detect{|number| number[:id] == id} 
 #or option #2
 #def find(id) 
  #@candidates.detect{|number| number[:id] == id}
end




#is the applicant experienced?
def experienced?(candidate)
   candidate[:years_of_experience] >= 2 
end

#do they have over 100 points             
def point_githubs?(y)
  y[:github_points] >=100 

end

#know ruby or python?
def can_code?(n)
  n[:languages].include?("Ruby") || n[:languages].include?("Python")#OR HE EXPLAINED IT AS : n[:languages].include?("Python")
  #I want to make sure that it incliudes Ruby or python (or both/more)
end


#have they applied in the last two weeks?
def date_of_application?(d)
  d[:date_applied] >= 15.days.ago.to_date
  #RIDICULOUSE BRAIN WARPING ONE! AHH!!!
  #what I'm really asking is April 24th less than April 15th on a plotted line from left to right? Nope! 

end

#are they over 17?
def old_enough?(a)
  a[:age] >= 17
end


def qualified_candidates(candidate)
    candidate.select do |i| 
      experienced?(i) &&
        can_code?(i) &&
          date_of_application?(i)&&
           old_enough?(i) 
  end
end

def ordered_by_qualifications?(persons)
    # within the sort, first we sort by YoE
    # if YoE  are equal, sort by github points
     
     persons.sort { |a, b| [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]]}     


end


def menu

  continue=true

  while continue

      puts "hello, please choose one of the options: find[1-10], all, qualified, quit" 

      user_input=gets.chomp

    #if it's a case, then when 
    case user_input
      when /find (\d+)/
      puts find($1.to_i)

    when /all/
      puts @candidates

      when /qualified/
      puts qualified_candidates(@candidates).sort { |a, b| [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]]}   

  when /quit/
    continue=false 
    
  else
    puts "Can you type that again?"

end
end  

end