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