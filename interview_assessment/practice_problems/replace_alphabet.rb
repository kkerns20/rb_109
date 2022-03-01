=begin
Problem
------------------------------------------
Given a string, replace every letter with it's position in the alphabet

Inputs: 1 string
Outputs: 1 string of numbers

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
alphabet_position() == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

Data Structure, Algorithm
------------------------------------------
- initialize the alphabet as an array
- initialize output to empty array
- downcase and scan for only alpha in text
  -iterate through scan
    - add index of each letter plus 1 to output array
- return output arr joined with ' '

=end

def alphabet_position(text)
  alpha = ('a'..'z').to_a
  output = []
  text.downcase.scan(/[a-z]/).each do |char|
    output << (alpha.index(char).to_i + 1)
  end
  output.join(' ')
end

# def alphabet_position(text)
#   text.downcase.delete("^a-z").bytes.map do |ltr|
#     ltr - 96
#   end
#     .join(' ')
# end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
