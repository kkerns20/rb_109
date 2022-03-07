=begin
Problem
------------------------------------------
Given three strings, iterate through and take the first letter of each string and append to one string

Inputs: 3 Strings
Outputs: 1 String

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'aaa', 'bbb', 'ccc' => 'abcabcabc'

Data Structure, Algorithm
------------------------------------------
- create a result arr to []
- initialize index to 0
- start simple loop
  - append str1 element at index to result arr
  - append str2 element at index to result
  - append str3 element at index to result
  - increment index
  - break if index >= str1.size
-end loop
- return joined result

=end

def triple_trouble(one, two, three)
  result = []
  index = 0
  loop do
    result.append(one[index])
    result.append(two[index])
    result.append(three[index])
    index += 1
    break if index >= one.size
  end
  result.join
end

def triple_trouble(one, two, three)
  one.chars.zip(two.chars, three.chars).join("")
end

p triple_trouble("aaa","bbb","ccc") == "abcabcabc"
p triple_trouble("Bm", "aa", "tn") == "Batman"
p triple_trouble("LLh", "euo", "xtr") == "LexLuthor"
