=begin
Problem
------------------------------------------
Given an array of integers, count all pairs in array and return the count

Inputs: array of integers
Outputs: integer

Rules/Requirements
- count each pair cycle once
  - 0, 0, 0, 0 => 2
- max array length is 100

Clarifying Questions


Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create method to accept array as argument
  - set count to 0  
  - find all the uniq values and iterate through uniq array and count uniq values appearance from array
    - if count of current variable is even
      - add that element / 2 to count
    - if count of currnet variable is odd
      - add that element divided by two to count
    - else if the count it 0 or 1 go to next element
  - return count
  
# Refactored Algorithm:
- Create a new array of elements with all duplicates deleted
- Initialize a pairs variable to 0
- Iterate over the unique elements array
  - Get the count of each element in the original array
  - If the count is even, increment the pairs array by the count / 2 (i.e. if the count is 4, add 2)
- Return the pairs variable    

=end

def pairs(array)
  count = 0
  array.uniq.each do |ele|
    count += array.count(ele) / 2
  end
  count
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1 
p pairs([]) == 0
p pairs([54]) == 0 
