=begin
Problem
------------------------------------------
Given a nested array, identify the location of the mine denoted by a 1. Output should be an array and should be 0 based index location

Inputs: 1 nexted array
Outputs: 1 array of two elements

Rules/Requirements
- 1 signifies a bomb
- 0 signifies safe
- two element array return signifies location of the bomb

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
[ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) => returns [0, 0]


Data Structure, Algorithm
------------------------------------------
==> Iterate through subarrays to identify the index of the nested array containing a 1 and then find the index within that array that contains 1

-- method --> mineLocation(arr) -->
- initialize mine locaiton to empty array
- iterate through the given array with index
  - if the subarray includes 1
    - append that index to mine location
    - append the index within the sub array to mine location
- return mine location

=end

def mineLocation(arr)
  mine_location = []
  arr.each_with_index do |sub_arr, idx|
    if sub_arr.include?(1)
      mine_location << idx
      mine_location << sub_arr.index(1)
    end
  end
  mine_location
end

def mineLocation field
  field.each_with_index {|x, i| return i, x.index(1) if x.include? 1}
end

def mineLocation field
  row = field.index { |item| item.include?(1) }
  col = field[row].index(1)
  [row, col]
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
