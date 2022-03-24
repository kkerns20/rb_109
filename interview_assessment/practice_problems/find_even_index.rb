=begin
Problem
------------------------------------------
Given an array of integers, return the index where the array to the left and the right of that index is equal. Return -1 if that never happens

Inputs: 1 array of integers
Outputs: 1 integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
[1, 2, 3, 4, 3, 2, 1]
at index 0
sum of 0...0 == 1..-1
at index 3
sum of 0...3 == 4..-1

Data Structure, Algorithm
------------------------------------------
set ouput to empty arr
- From 0 upto arr sizeiterate through do i
  - return i if arrfrom 0...i sum == i+1..-1 sum
- if ouput is empty
  - return -1
-else
  - output at index 0
=end

def find_even_index(arr)
  output = []
  (0...arr.size).map do |i|
    output << i if arr[0...i].sum == arr[(i + 1)..-1].sum
  end
  output.empty? ? -1 : output[0]
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1, 100, 50 ,-51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3



