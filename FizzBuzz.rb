def_do fizzbuzz(num)
puts "the current number is #{num}"
    if num % 15 ==0 
        puts "fizzbuzz"
    elsif num % 3 == 0
        puts "buzz"
    elsif num % 5 ==0 
        puts "fizz"
    else
        puts "NOFIZZBUZZ!!"
    end
end
    
    
   (1..100).each do |current_number|
    do_fizzbuzz(current_number)
end

    
end 