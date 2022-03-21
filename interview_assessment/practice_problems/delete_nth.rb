=begin
Problem
------------------------------------------
Given a list and a number, create a new list that contains each number of at most n times without reordering

Inputs: 1 array and 1 integer
Outputs: 1 array

Rules/Requirements
- based off of the integer input, delete any occurrence of any character passed that n times

Clarifying Questions
- new array returned

Examples, Test Cases
------------------------------------------
[1,2,3,1,2,1,2,3], 2
1 => 1 count in output arr so add to arr
2 = > not in returned arr so add to arr
3 = not in returned arr so add to arr
1 => count of 1 is 1 and is less than 2 so add to array
.
.
1 => count of 1 in arr is not < n so move to next value

Data Structure, Algorithm
------------------------------------------
- returned to []
- iterate through the array
  - push to returned if returned count of ele < n
- return returned
=end

def delete_nth(arr, n)
  output = []
  arr.each {|x| output << x if output.count(x) < n}
  output
end

p delete_nth([20,37,20,21], 1)#== [20,37,21]
p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]
