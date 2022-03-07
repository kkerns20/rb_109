=begin
Problem
------------------------------------------
Take an array of string and format into a sentence 

Inputs: 1 Array of string
Outputs: 1 String

Rules/Requirements
- nil or empty array return empty string after deleting ''
- if stripped array is 1 element
  - return that element
- if it has two elements
  - return those two with 'and' between
- if three or more element
  - put a comma after each one besides the first to last and last element

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- return '' if array is nil
- reject any word that is ''
- pop off last two elements, join with ' and ' and append to array
- join array with ', '

=end

def format_words(words)
  return "" if words.nil?
  words.reject! { |word| word == "" }
  words << words.pop(2).join(" and ")
  words.join(", ")
end

p format_words(["one", "two", "three", "four"]) == 'one, two, three and four'
