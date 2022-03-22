=begin
Problem
------------------------------------------
Uppercase third instance of a specific char

Inputs: 1 string
Outputs: 1 string

Rules/Requirements
- only capitalize the third instance of a given char

Clarifying Questions
- don't mutate input string

Examples, Test Cases
------------------------------------------
Hello logan => Hello Logan
h count is 1
e count is 1 
l count is 1
l count is 2
o count is 1
space
l count is 3, so capitalize

Data Structure, Algorithm
------------------------------------------
- initialize hash to Hash new with default 0
- split the string into chars and assign to an array
- loop through the array and transform elements
  - increment that hash's key downcased
    - if that hash key's value is 3
        - upcase that char
- join the array
  

=end

def uppercase_third(string)
  hash = Hash.new(0)
  arr = string.chars
  arr.map do |char|
    hash[char.downcase] += 1
    if hash[char.downcase] % 3 == 0
      char.upcase
    else
      char
    end
  end.join
end

p uppercase_third('This is a test animal') == 'This is a teST anImAl'
p uppercase_third('This Is A Test Animal') == 'This Is A TeST AnImAl'
p uppercase_third('This is a test animal iiiiii') == 'This is a teST anImAl iiIiiI'
