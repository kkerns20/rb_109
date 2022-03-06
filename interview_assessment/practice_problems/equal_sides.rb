=begin
Problem
------------------------------------------


Inputs: 1 array
Outputs: 1 integer

Rules/Requirements
- return the index where the array's sum up to the index is hte same as the arrary sum after the index

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- given an array of integers
- loop (iterate each with index)
  - if the sum from 0 to index is equal to sum from index to -1,
    - return index
  - else
    - return -1
  -end if conditional
- end loop

=end

# def find_even_index(array)
#   (0...array.size).each do |idx|
#     return idx if array[0..idx],sum == array[idx..-1].sum
#   end
  
#   -1
# end

def find_even_index(arr)
  left_sum = 0
  right_sum = arr.reduce(:+)
  
  arr.each_with_index do |e, ind|
    right_sum -= e
    
    return ind if left_sum == right_sum

    left_sum += e
  end
  
  -1  
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
