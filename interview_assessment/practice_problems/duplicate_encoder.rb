=begin
Problem
------------------------------------------
Convert a string to a new string where each character is '(' if that char appears once or ')' if that char appears more than once

Inputs: 1 String
Outputs: 1 String of parentheses

Rules/Requirements
- duplicate chars, including spaces, turned into ')'
- single appearance chars, including spaces, turned into '('

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"(( @"
( appears twice, so it's changed to ')'
' ' appears once, so it's changed to '('

Data Structure, Algorithm
------------------------------------------
==> iterate through string, if the char count is > 1, ')' else '('

- downcase and reassign the string
-iterate through the chars of string with transformation
  - if count of current element in the string is > 1, 
    - gsub with ')'
  - else
    - gsub with '('
- join the return
=end

def duplicate_encode(string)
  string = string.downcase
  string.chars.map do |char|
    string.count(char) > 1 ? ')' : '('
  end
    .join
end

def duplicate_encode(word)
  word
      .downcase
      .chars
      .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
      .join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
