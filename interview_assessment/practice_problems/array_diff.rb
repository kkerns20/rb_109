=begin
Problem
------------------------------------------
Subtract one list of integers from another. Remove all values from list that are present in the second list.

Inputs: 2 Arrays
Outputs: 1 Array

Rules/Requirements
- If an element from the second is present in the first, delete that element

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> Iterate through second array and delete all first array elements present in the second, return the first

- Iterate through second array
  - delete current element from first array
- return first array

=end

def array_diff(arr1, arr2)
  arr2.each { |ele| arr1.delete(ele) }
  arr1
end

def array_diff(a, b)
  a - b
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
