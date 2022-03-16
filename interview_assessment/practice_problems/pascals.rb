=begin
Problem
------------------------------------------
Create pascal's triangle as a nested array

Inputs: 1 Integer
Outputs: I nested array

Rules/Requirements
- Must be pascals triangle
- input number is number of nested arrays

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
1 => [1]
3 => [1], [1,1], [1,2,1]
[(0+1), 
5 => [1], [1,1], [1,2,1], [1, 3, 3, 1], 
[1, 4, 6, 4, 1]

Data Structure, Algorithm
------------------------------------------
- set pascals to []
- set row to [1]
- loop from 0 upto to n with i as param
  - if i is zero
    - push row to pascal
    - reassign row to 1, 1
  - else
    - push row to pascal
    - reassign row to [0] + row zipped to row + [0]
      - then collect the sum of the arrays
  - end conditional
- end loop
- return pascals

=end

def pascal n
  pascals = []
  row = [1]
  (0...n).each do |i|
    if i.zero?
      pascals << row
      row = [1,1]
    else
      pascals << row
      row = ([0] + row).zip(row + [0]).collect { |a, b| a + b }
    end
  end
  pascals
end 

p pascal(5)
