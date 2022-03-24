=begin
Problem
------------------------------------------
Write function scramble(str1, str2) that returns true if a portion of str1 chars can be rearranged to match str2, otherwise, return false.

For example:
str1 is 'rkgodlw' and str2 is 'world' the output would be true

Inputs: 2 strings
Outputs: boolean

Rules/Requirements
- only lowercased letters will be used
- no puntuation or digits

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'javaass', 'jjss' == false
'j' in str 2 count is 2 which is greater than str 1
return false

'rkqodlw', 'world' == true
'w' count in str 2 is <= count of str 1
'o' count in str 2 is <= count of str 1
'r' count in str 2 is <= count of str 1
'l' count in str 2 is <= count of str 1
'd' count in str 2 is <= count of str 1
return true


Data Structure, Algorithm
------------------------------------------
set arr2 to the chars of str2
iterate through arr 2
  return false if str2 count of char is greater than the str1 count of char
return true

=end

def scramble(str1, str2)
  arr2 = str2.chars
  arr2.map {|ch| return false if str2.count(ch) > str1.count(ch) }
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
