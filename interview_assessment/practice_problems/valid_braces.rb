=begin
Problem
------------------------------------------
take a string of braces and determine if the order of hte braces is valid, output a boolean


Inputs: Stirng of braces
Outputs: boolean

Rules/Requirements
- all braces are matched with the correct braces

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"(){}[]"
1st is (, so is next a ) ? yea? keep going

"([{}])"
1st is (, is next a ) no? is next an opening? yeah
is next an opening?

Data Structure, Algorithm
------------------------------------------
create a hash of openings and closing braces
- create arr to []
- iterate through chars of string
  - if its an opening
    - push to arr
  - elsif element equal the value of the hash of the  last element in the array
    - pop the array
  - end conditional
- end loop
- arr empty then true, else false

=end

BRACES = { '(' => ')', '{' => '}', '[' => ']' }

def validBraces(braces)
  return false if braces.size.odd?
  arr = []
  braces.chars.each do |brace|
    if brace == '(' || brace == '[' || brace == '{'
      arr << brace
    elsif BRACES[arr.last] == brace
      arr.pop
    end
  end
  arr.empty? ? true : false
end

p validBraces("(){}[]") == true
p validBraces("(}") == false
