=begin
Problem
------------------------------------------
Given an array of strings, return a string that shows everyone likes this

Inputs: 1 array of string
Outputs: 1 string

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- return 'no one likes this' if arr is empty
- initialize output to []
- if array size is 1
  - return that element plus 'likes this'
- else
  - pop last two elements, join with ' and ' and append to array
- join the array with ', ' and append with 'likes this'

=end

def likes(names)
  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end
