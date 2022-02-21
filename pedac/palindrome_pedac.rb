=begin
Given a string, write a method `palindrome_substrings` which returns
all the substrings from a given string which are palindromes. Consider
palindrome words case sensitive.

Test cases:
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []

P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method that takes 1 string and returns all the substrings which are palindromes. Palindrome words are case-sensitive, e.g. "aba" is a palindrome, while "Aba" is not.

Inputs: 1 string
Outputs: 1 array containing 0 or more strings.
- Output is a new object, not a mutation of an existing object
- Output order: Examples show that strings in the output array must appear in the same order as they appear in the given string. E.g. "bcddcb" starts at index 1, while "dd" starts at index 3.

Explicit Requirements
- Consider palindrome words case-sensitive.
Implicit Requirements
- Return only substrings that are at least 2 characters long.
- Empty string input should output empty array.
Clarifying Questions
- What is a palindrome?
  - A word that is the same in reverse.
- What is a substring?
  - A string that can be formed using any number of consecutive characters within a given string.
  - Must be the same length or shorter than the given string.
- Will input always be strings?
  - Yes.
- Clarify the case-sensitivity requirement.
  - Upper and lower case versions of the same letter are not considered equal.

E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: "abcddcbA"
Outputs: ["bcddcb", "cddc", "dd"]
Step-by-step:
1. Retrieve all possible substrings.
a
ab
abc
...and so forth
2. Filter to those substrings that are palindromes.
"bcddcb"
"cddc"
"dd"
"abcddcbA" is NOT a palindrome because "a" is not equal to "A".


D: Data Structure
--------------------------------------------------------------------------------
Use an array to store the results. Why?
- Output must be in array format.
- Iteration will be useful.

A: Algorithm
--------------------------------------------------------------------------------
High-level summary: Find all substrings, and filter to those that equal themselves when reversed.

Pseudo-code:
- Use helper method to find all substrings.
- Filter the substring array to palindromes only.
  - Iterate through all strings in the array.
    - Invoke the palindrome? method
    - Include the string in the result array if palindrome? returns true.
- Return the resulting array.

Helper Method: Find all substrings of length >= 2. Return as array of strings.
- Initialize an empty result array.
- Substrings can begin at any index of the given string.
- Iterate from 0 to (string size - 2). There is no need to go to (string size - 1) because that would return a 1-character string.
  - Iterate from (current index + 1) to (string size - 1). Do not start at current index because that would return a 1-character string.
    - Slice the given string from the starting index to the ending index.
    - Add this substring to the result array.
- Return the result array.

Helper Method: Check if palindrome. This is a predicate method which returns a boolean.
- Check equality of the string and a reversed version of it.
  - Return true or false

C: Code
--------------------------------------------------------------------------------
=end

def palindrome?(str)
  str == str.reverse
end

# p palindrome?("")
# p palindrome?("aba")
# p palindrome?("abA")

# Finds substrings length 2 or longer
def find_substrings(str)
  substrings = []
  (0..str.size - 2).each do |start_idx|
    (start_idx + 1..str.size - 1).each do |end_idx|
      substrings << str[start_idx..end_idx]
    end
  end
  substrings
end

# Using Integer#upto
def find_substrings(str)
  substrings = []
  0.upto(str.size - 2).each do |start_idx|
    (start_idx + 1).upto(str.size - 1).each do |end_idx|
      substrings << str[start_idx..end_idx]
    end
  end
  substrings
end

# Basic looping method
def find_substrings(str)
  # return [] if str.length == 0
  
  substrings = []
  start_idx = 0
  end_idx = start_idx + 1
  
  loop do
    break if start_idx >= str.size - 1
    
    loop do
      break if end_idx >= str.size
      substrings << str[start_idx..end_idx]
      end_idx += 1
    end
    
    start_idx += 1
    end_idx = start_idx + 1
  end
  
  substrings
end

=begin
Debug basic looping method
Input: ""
substrings: []
start_idx: 0
end_idx: 1

break if 0 == (0 - 1) => Infinite loop
Fix by returning immediately when string == "", or changing == to >=.


Input: "USA"
substrings: []
start_idx: 0
end_idx: 1

Outer loop
break if 0 == (3-1) => false
  Inner loop
  break if 1 == 3 => false
  substrings << str[0..1] == "US"
  end_idx = 2
  break if 2 == 3 => false
  substrings << str[0..2] == "USA"
  end_idx = 3
  break if 3 == 3 => true

start_idx = 1
end_idx = 2

break if 1 == 2 => false
Inner loop
  break if 2 == 3 => false
  substrings << str[1..2] == "SA"
  end_idx = 3
  break if 3 == 3 => true
  
start_idx = 2
end_idx = 3

break if 2 == 2 => true

return ["US", "USA", "SA"]

=end

# p find_substrings("")
# p find_substrings("USA")
# p find_substrings("texas")
# p find_substrings("california")

def palindrome_substrings(str)
  substrings = find_substrings(str)
  substrings.select { |substring| palindrome?(substring) }
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []

# Check if current state of code is consistent with algorithm.

# Think of alternative ways to write this method, e.g. simple looping, Integer#upto, etc.