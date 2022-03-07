=begin
Problem
------------------------------------------
given an array of numbers, return all that are missing in count from smallest to largest

Inputs: 1 array
Outputs: 1 array

Rules/Requirements
- in chronological order
- empty arr returns empty array

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- create array from input array's first element to last element
- subtract the two arrays

=end

def find_missing_numbers(arr)
  return [] if arr == []
  (arr[0]..arr[-1]).to_a - arr
end

def find_missing_numbers(arr)
  arr==[]? []: (arr[0]..arr[-1]).to_a - arr
end

p find_missing_numbers([-1, 0, 2, 3])
