=begin
Problem
------------------------------------------

Inputs: 1 valid Array of only 'n', 's', 'e', 'w' only
Outputs: boolean

Rules/Requirements
- instructions should have 10 elements total
- instructions should have an equal number of 'e'/'w' or 'n'/'s' directions
  - if these two conditions are not met, return false;otherwise true

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
array is 12 elements long

Data Structure, Algorithm
------------------------------------------
==> Check and  see if the array is 10 elements long, has equal 'n' and 's', has equal 'w' and 'e', if so true, if not false.

-- method -->is_valid_walk(arr)\
  - if array is 10 elements long AND
  - if there are equal number 'n' and 's' AND
  - if there are an equal number 'w' and 'e'
    - return true
  - otherwise, return false

=end

def is_valid_walk(arr)
  arr.size == 10 &&
  arr.count('n') == arr.count('s') &&
  arr.count('e') == arr.count('w')
end
