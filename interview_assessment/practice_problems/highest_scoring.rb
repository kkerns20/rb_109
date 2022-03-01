=begin
Problem
------------------------------------------
Given a string of words, determine the highest scoring word.
Each letter of alphabet corrensponds to that score
Return the highest scoring word.
If two score the same, return earliest word

Inputs: 1 string
Outputs: 1string

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'aa b' both score 2, but aa is earlier in string

Data Structure, Algorithm
------------------------------------------
--method--> high(x) --> string
- Initialize an alphabet string containing all the leters in the alphabet 
in order
- Initialize an empty hash
- Split the sentence into an array of words
- Iterate over each word in the array
  - Get the score for the current word
  - Add the current word as the key and it's score as the associated value 
  in the hash
- Select those key-value pairs in the hash that have the maximum score
- Return the key that appears first in the hash of selected items
- Get the score for the current word
  - Initialize a score variable to 0
  - Iterate over the chars in the word, for each char
    - Add the score value for the current char to the score variable
  - Return the score
=end

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def word_score(word)
  score = 0
  word.each_char { |char| score += (ALPHABET.index(char) + 1) }
  score
end

def high(sentence)
  scores = {}
  sentence.split.each do |word|
    scores[word] = word_score(word)
  end
  
  scores.select! { |word, score| score == scores.values.max }
  
  scores.keys.first
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
