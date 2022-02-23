=begin
https://www.codewars.com/kata/558fa34727c2d274c10000ae

Only took me an hour

Write a program that, given a word, computes the Scrabble score for that word.

Letter                          Value
A, E, I, O, U, L, N, R, S, T        1
D, G                                2
B, C, M, P                          3
F, H, V, W, Y                       4
K                                   5
J, X                                8
Q, Z                               10

score('')            =>  0
score('a')           =>  1
score('cabbage')     => 14
score('Cabbage')     => 14


P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
given a string then compute the scrabble score for that word based on the table above.

Inputs: string <-- one word
Outputs: integer total of that words

Explicit Requirements
- given string and integer

Implicit Requirements
- given empty an string, return a score of 0

Clarifying Questions
- Return new object or mutate existing one?
- Input data types always the same? always given a string 
- Does output order matter? not in this case
- Any domain-specific terms?
- Does case matter?  case does not matter in this instance


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: 'a'
Outputs: 1
'a' has a value of 1 => so the sum is 1

Inputs: 'cabbage'
Output: 14
c => 3
a => 1
b => 3
b => 3
a => 1
g => 2
e => 1
sum == 14


D: Data Structure
--------------------------------------------------------------------------------
Input: string
Intermediate: array
Output: integer


A: Algorithm
--------------------------------------------------------------------------------
High-level: Given a string, identify individual character values, then sum those values as a return of the method


Pseudo-code:
create a global constant with a hash of score as key and letters as value

define method score that one argument string
  - return empty array if str is empty
  - save string into arr thats contains the string broken apart into characters upcased
  - intialize scores to empty array
  - iterate through the char_arr 
      - retrieve the score for the current character on the current iteration
      - append key associated with value to scores
  -invoke sum on scores to return the scrabble score
  
Helper Method:
- define char_value to accept one parameter char
 - initialize empty arr to value
 - iterate through score table 
  - check to see if the hash value array includes the char
    - if included, return key associated to it
    - if char is not included, do nothing

C: Code
--------------------------------------------------------------------------------
=end

# SCORES = {
#   'A' =>  1,
#   'B' =>  3,
#   'C' =>  3,
#   'D' =>  2,
#   'E' =>  1,
#   'F' =>  4,
#   'G' =>  2,
#   'H' =>  4,
#   'I' =>  1,
#   'J' =>  8,
#   'K' =>  5,
#   'L' =>  1,
#   'M' =>  3,
#   'N' =>  1,
#   'O' =>  1,
#   'P' =>  3,
#   'Q' => 10,
#   'R' =>  1,
#   'S' =>  1,
#   'T' =>  1,
#   'U' =>  1,
#   'V' =>  4,
#   'W' =>  4,
#   'X' =>  8,
#   'Y' =>  4,
#   'Z' => 10
# }

# def score(word)
#   letters = word.chars
#   letters.map! { |c| SCORES[c.upcase] }
#   letters.sum
# end


VALUES = {
  0 => '',
  1 => %w(A E I O U L N R S T),
  2 => %w(D G),
  3 => %w(B C M P),
  4 => %w(F H V W Y),
  5 => %w(K),
  8 => %w(J K),
  10 => %w(Q Z)
}


def score(str)
  return 0 if str.empty? 
  char_arr = str.upcase.split('')
  scores = []
  
  char_arr.each do |char|
    scores << char_value(char)
  end
  
  scores.sum
end
  
def char_value(char)
  VALUES.each do |k,v|
    if v.include?(char)
      return k
    end
  end
  0
end  
    
p score('')            ==  0
p score('a')           ==  1
p score('cabbage')     == 14
p score('Cabbage')     == 14
p score('st re et')    == 6

=begin
https://www.codewars.com/kata/546f922b54af40e1e90001da

Given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )

P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Given a string, replace every letter with its position in the alphabet
Alphabet positions: 1-26

Inputs: 1 string
- Data types always the same?
  - Yes, always a string.
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  - Empty string? Return empty string.
  - Numbers, punctuation? Ignored.
  - Case sensitivity: Upper and lower case letter have the same position in the alphabet.

Outputs: 1 string, consisting of integers separated by spaces.
- Print or return? Return new object or mutate existing?
  - Return a new string.
- Does element order matter?
  - Yes, the Integers must appear in the order of the original string.
- How to handle duplicates? N/A

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: "The sunset sets at twelve o' clock."
Outputs: "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
T   => 20
h   => 8
e   => 5
' ' => skip
s   => 19
u   => 21
n   => 14
s   => 19
e   => 5
t   => 20


D: Data Structure
--------------------------------------------------------------------------------
Input: String
Intermediate: Array, Hash
- Accumulate Integer in an array
- Use collection method to join element
- Use Hash as a lookup table to find alphabet position, given a letter
Output: String


A: Algorithm
--------------------------------------------------------------------------------
Iterate through input string characters, adding alphabet position to result array if it is not punctuation or a number. Join result array into a space-separated string.

Create a lookup table (Hash) where the keys are letter a-z, and the values are alphabet positions (Integers 1-26).

Pseudo-code:
- Initialize an empty result array.
- Split input string into array of characters.
- Iterate over the character array
  - Convert the character to its lowercase version.
  - Check if current character is a key in the hash.
    - If so:
      - Lookup the alphabet position in the Hash.
      - Append the position to the result array.
    - If not, do nothing.
- Join result array using ' ', and return resulting string.
    

Helper method:


C: Code
--------------------------------------------------------------------------------
=end

ALPHA_POSITIONS = [*'a'..'z'].zip(1..26).to_h

def alphabet_position(str)
  result = []
  char_arr = str.chars
  char_arr.each do |char|
    char = char.downcase
    result << ALPHA_POSITIONS[char] if ALPHA_POSITIONS.key?(char)
  end
  result.join(' ')
end
  
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"