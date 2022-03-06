=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- Convert the input string to an array of words
- Iterate over the words, for each word transform as follows
  - Initialize an empty string to be the first letter
  - Initialize an empty string to be the rest of the word
  - Iterate over the characters in the word
    - If the current char is a number, append it to the first_letter string
    - If the current char is a letter, append it to the rest of the word string
  - Switch the first and last char in the rest of the word string
  - Convert the first_letter string to an integer and get the associated ASCII char
  - Concatenate that with the rest of the word string, have the result be the transformed element
- Join with a ' ' and return the resulting string
=end

def decipher_this(coded_str)
  coded_str.split.map do |word|
    first_letter = ''
    rest_of_word = ''
    word.each_char do |char|
      ('0'..'9').include?(char) ? first_letter << char : rest_of_word << char
    end
    
    rest_of_word[0], rest_of_word[-1] = rest_of_word[-1], rest_of_word[0] unless rest_of_word.empty?
    first_letter.to_i.chr + rest_of_word
  end.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
