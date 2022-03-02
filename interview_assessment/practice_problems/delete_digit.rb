=begin
Problem
------------------------------------------
Given an integer, find the maximum number you can obtain by deleting exactly one digit

Inputs: 1 integer 10<=x<=1000000
Outputs: 1 integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> loop through integer digits, deleting and joining one at a time and pushing to result array. Return maximum value

--method--> delete_digit(integer) --> Integer
- initialize numbers array to []
- intialize index to 0
- start simple loop
  - set digits to return of integer digits
  - delete index of digits Array
  - reverse join and push array to numbers
  - increment index by 1
- return numbers array max value
=end

def delete_digit(int)
  numbers = []
  index = 0
  loop do
    digits = int.digits
    digits.delete_at(index)
    numbers << digits.reverse.join.to_i
    index += 1
    break if index == int.digits.size
  end
  numbers.max
end
