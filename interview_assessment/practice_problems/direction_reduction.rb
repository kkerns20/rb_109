=begin
https://www.codewars.com/kata/550f22f4d758534c1100025a/train/ruby
Problem
------------------------------------------
Given and array of string as directions, if you one way and immediately go its opposite direct, then it's pointless and your direction can be pruned.



Inputs: 1Array of Strings
Outputs: 1 Array of Strings


Rules/Requirements
- If you travel one direction and immediately return the opposite way, delete that pair of directions
- If you continue and delete a pair of directions and then have a pair travel the opposite way, you need to delete those as well


Clarifying Questions
- 


Examples, Test Cases
------------------------------------------
"NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"
initial N S is deleted, then east west is deleted, then S N is deleted, so the return should be west

Data Structure, Algorithm
------------------------------------------
==> Constant hash of opposite directions. Build a set of directions that satisfy the rules.

- initialize hash constant of cardinal opposites

- initial result array to []
- iterate through input array
  - check to see if last element in result array is an cardinal opposite
    - if it is, pop that element off of result
    - if its not, push that element to result
- return result array

=end

CARDINAL = {
  'NORTH' => 'SOUTH',
  'SOUTH' => 'NORTH',
  'EAST' => 'WEST',
  'WEST' => 'EAST'
}

def dirReduc(directions)
  result = []
  directions.each do |direction|
    if CARDINAL[direction] == result.last
      result.pop
    else
      result.push(direction)
    end
  end
  result
end


p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) == ["WEST"]

p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"]) == ["NORTH", "WEST", "SOUTH", "EAST"]