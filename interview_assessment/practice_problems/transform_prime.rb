=begin
Problem
------------------------------------------
Given an array of integers, find the minimum number to insert so that the sum of all elements in the list would equal the closest prime number

Inputs: 1 Array of integers
Outputs: 1 Integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> Sum array and loop through numbers starting at the sum up until a prime value, then return that extra sum number

- initialize sum array to the sum of the input array
- initialize result to 0
- use a while loop for if the sum array and result are not prime
  - increment result
-return result

Helper method:
- from 2 to num - 1, check and see if there are no numbers such that the num % divisor == 0

=end

def prime_number?(num)
  (2..num - 1).none? { |div| num % div == 0 }
end

def minimum_number(arr)
  sum_arr = arr.sum
  result = 0
  while prime_number?(sum_arr + result) == false
    result += 1
  end
  result
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
