=begin
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []


P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method that, when given a string and an array of string, return all strings from the array which are anagrams of the first string argument.

Inputs: 1 string, 1 array of strings
Outputs: 1 array of strings, or an empty array.

Explicit Requirements
- 

Implicit Requirements
- No anagrams: Return empty array.
- All lowercase letter, no uppercase or punctuation.

Clarifying Questions
- Return new object or mutate existing one?
- Input data types always the same?
- Does output order matter?
  - Yes, same order as the input array.
- Any domain-specific terms?
  - Anagram: words that contain the same letters.

E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Consider:
- 0, nil, "", [], {}, special chars, symbols
- Negative numbers
- Decimals instead of integers
- Boundary conditions
- Repetition / duplication
- Case sensitivity
- 0, 1, and multiple items in a collection
- Data types
- Exceptions
- Missing arguments

Case: 
Inputs:
- String 'abba'
- Array ['aabb', 'abcd', 'bbaa', 'dada']
Outputs: ['aabb', 'bbaa']
Step-by-step
Input 'abba' has 2 'a' and 2 'b'
String 1: 'aabb' has 2 'a' and 2 'b' => Anagram
String 2: 'abcd' has 'a', 'b', 'c', 'd' => NOT Anagram
String 3: 'bbaa' has 2 'a' and 2 'b' => Anagram
String 4: 'dada' has 2 'a' and 2 'd' => NOT Anagram


D: Data Structure
--------------------------------------------------------------------------------
Input: String, Array
Intermediate: Array
Output: Array


A: Algorithm
--------------------------------------------------------------------------------
High-level: Iterate through array, compare each word's characters with the input string's characters. Add to result array if they are the same.


Pseudo-code:
- Initialize a empty result array
- Iterate over input array of strings:
  - Compare equality by invoking strings_equal? on input string, and current string during iteration
    - If true, add the original unsorted string to the result array.
    - If not, do nothing.
- Return result array.


Helper Methods:
Define method strings_equal? which takes 2 parameters, str1 and str 2.
For each of the 2 strings:
- Split input string into array of characters.
- Sort and join the array back into a string.
Return true if the transformed strings are equal, false if not.


C: Code
--------------------------------------------------------------------------------
=end

def strings_equal?(str1, str2)
  str1_alphabetized = str1.chars.sort.join
  str2_alphabetized = str2.chars.sort.join
  str1_alphabetized == str2_alphabetized
end


def anagrams(word, words)
  results = []
  words.each do |str|
    results << str if strings_equal?(word, str)
  end
  results
end

# p strings_equal?('abba', 'babdsfhjasldkjhasa')

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []