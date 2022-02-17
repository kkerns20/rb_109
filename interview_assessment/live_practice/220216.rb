=begin
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

Rules
 1.  The input string will always be lower case but maybe empty.
 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

Example
wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

P: Understand the Problem
-----------------------------------------------------
Problem Statement


Inputs: string
Outputs: array of string

Explicit Requirements
- upcase each index in sequential order as we iterate
- must return an array of strings

Implicit Requirements
- 

Clarifying Questions
- Return new object or mutate existing one?
- Input data types always the same?
- Does output order matter?
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
-----------------------------------------------------
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

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

Case: 
Inputs: 
Outputs:

Step by Step

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
Index 0: pass
Index 1: Append " Gap " to result array
Index 2: Append " gAp " to result array
Index 3: Append " gaP " to result array
Index 4: pass
Return result array


D: Data Structure
--------------------------------------------------------------------------------
Input: string
Intermediate: 
Output: array of strings


A: Algorithm
--------------------------------------------------------------------------------
High-level: 


Pseudo-code:
- accept a str as argument
- create an empty array result_array
- return result if str.empty
- create an index set to 0
- call each on str.chars with do..end block
  - if in the range of letters 
    - upcase the element at current index with a helper method
   - append to result array
- increment index by 1
- result_array

Helper Methods:
define upcase_element to accept string and index
  str[0...index] + str[index].upcase + str[(index + 1)..-1]

C: Code
--------------------------------------------------------------------------------


=end

def wave(str)
  result_array = []
  return result_array if str.empty?
  index = 0
  
  str.chars.each do |char|
    if ('a'..'z').include?(char)
      result_array << upcase_element(str, index)
    end
    index += 1
  end
  
  result_array
end

def upcase_element(str, index)
  str[0...index] + str[index].upcase + 
    str[(index + 1)..-1]
end

# p upcase_element("hello", 3)


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

# Jason's Anagram Problem

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