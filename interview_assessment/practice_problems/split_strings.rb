=begin
Problem
------------------------------------------
split the input string into an array of two characters. If the string is an odd number in length, the last char is '_'

Inputs: 1 String 
Outputs: 1 Array of two char strings

Rules/Requirements
- if string length is odd, last element is '_'
- empty string returns empty arr

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'abc' --> ['ab', 'c_]


Data Structure, Algorithm
------------------------------------------
==> Loop through string and append first two chars to answer, end at end of string, append '_' if str length is odd

--method --> solution(string) --> Array
- return empty array if string is empty
- initialize answer to empty arr
- initialize index to 0
- start simple loop
  - append string at elements index 0 to index +1 to answer array
  - increment index by 2
  - break if index >= string length
- if string length is odd
  - append '_' to answer index -1
- return answer array
=end

def solution(string)
  return [] if string.empty?
  string << '_' if string.length.odd?
  answer = []
  index = 0
  loop do
    answer << "#{string[index]}#{string[index + 1]}"
    index += 2
    break if index >= string.length
  end
  answer
end

def solution str
  (str + '_').scan /../
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
