=begin
Write a function weirdcase(str) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

Examples:
weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

'String'
S at ind 0, upcase
t at ind 1 downcase
r at ind 2 upcase
i at ind 3 downcase

'Weird string'



Problem
------------------------------------------


Inputs: 1 string
Outputs: 1 string

Rules/Requirements
- for each word, upcase the even ind
- down case odd case odd ind

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
-- weirdcase(str) --> string
- split of the input string into an array of words
- iterate through the array transforming each word into weird case
  - pass each word to case_it
- return array join by a space

helper case_it(word)
- iterate through the word with index transforming each word
    - if that index is even
      -upcase that char
    - else
      - downcase that char
- join chars for the word

=end

def weirdcase(str)
  arr = str.split
  arr.map do |word|
    case_it(word)
  end.join(' ')
end

def case_it(word)
  word.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join
end
