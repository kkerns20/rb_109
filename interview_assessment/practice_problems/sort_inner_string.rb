=begin
Problem
------------------------------------------
Sort the inner content of a string in reverse order

Inputs: 1 String
Outputs: 1 String

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- create words to []
- split apart string into words and append to words
- iterate through words
  - word[0] + word 1...-1 chars sort reverse + word -1




=end

def sort_the_inner_content(string)
  string.split.map do |word|
    if word.length > 1
      word[0] +
      word[1...-1].chars.sort.reverse.join.to_s +
      word[-1]
    else
      word
  end.join(' ')
end

def sort_the_inner_content(words)
  words.split.each { |x| x[1..-2] = x[1..-2].chars.sort.reverse.join }.join(' ')
end
  
