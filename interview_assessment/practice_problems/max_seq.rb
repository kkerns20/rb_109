=begin
Problem
------------------------------------------
Find the maximum sum subarray of the continguous subsequence in an array of integers

Inputs: Array of integers
Outputs: 1 integer

Rules/Requirements
- if all positive, return sum of array
- if all negative, return 0
- if empty, return 0
- if both and positive and negative, return largest sum

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
-  check and see if all values in array are negative or empty and return 0 
- if all elements of array are positive, the return sum
- utilize helper method

- helper method
- initialize test_arr
- use upto to roll through each different different size
  - iterate through the array with each_cons absed on the number from upto
    - append the sub array to test_arr
- loop ( with map) to sum all arrays within test array and return the largest with max

=end

def max_sequence(array)
  return 0 if array.all? { |x| x < 0 || x == 0 }
  return array.sum if array.all? { |x| x > 0 }
  max_seq(array)
end

def max_seq(array)
  test_arr = []
  1.upto(array.size) do |num|
    array.each_cons(num) { |sub_arr| test_arr << sub_arr }
  end
  test_arr.map {|sub| sub.sum}.max
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
