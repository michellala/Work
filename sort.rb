# Sort the array from lowest to highest
#def sort(arr)
 # arr.sort
#end

def bubble_sort(arr)
  n = arr.length
  #ln 7, array length is my set of four numbers

  loop do
    #[2, 42, 22, 02]
    #[42, 2, 22, 02]
    #[42, 22, 2, 02]
    #[42, 22, 02, 2]

    swapped = false

    (n-1).times do |i|
        if arr[i] > arr [i + 1]
          arr [i], arr[i +1] = arr [i +1], arr[i]
          swapped = true
        end
      end

      #ln18 iterator variable is i, i +1 is the next number beside it 
      #ln 19 is the rule to swap, we do this by equalling the values to the opposite one, that is how we swap 
      #when accessing something within an element it needs an index

        break if not swapped 
      #break will break us out of the loop but only if swapped is not true
      end

      arr

end



# Find the maximum 
def maximum(arr)
  bubble_sort(arr).last
end

def minimum(arr)
  bubble_sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"