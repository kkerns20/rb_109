=begin
Problem
------------------------------------------
Given a string, detect whether it is a pangram. Return true if it is, false if not. Ignore numbers and punctuation. 

Inputs: 1 string
Outputs: Boolean

Rules/Requirements
- A pangram is a sentence that contains every single letter of hte alphabet at least once.

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
p panagram?("The quick brown fox jumps over the lazy dog.") == true
Every letter in the alphabet is used within the given string
Therefore, this will return 'true'

Data Structure, Algorithm
------------------------------------------
==> Breakdown string into characters and then check and see if every letter of the alphbet has been used.

-- method --> pangram?(string) --> boolean
  - create an array of all of the letters in the alphabet
  -determine if all letters of the alphabet are found in the array of alpha letters
    - return true if so
    - otherwise, false
=end

def panagram?(string)
   string.downcase.scan(/[a-z]/).uniq.size == 26
end

def pangram?(string)
  ([*?a..?z] - string.downcase.chars).empty?
end

def pangram?(string)
  ('a'..'z').to_a.all? do |letter|
    string.downcase.include?(letter)
  end
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
