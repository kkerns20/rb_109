=begin
Problem
------------------------------------------
Return a boolean if a portion of the first string given can be rearranged to match the second string

Inputs: 1 string
Outputs: boolean

Rules/Requirements
- Only lower case letter will be used
- no punctuation or digits

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'javaass', 'jjss'
  - 'j' => 1, => 2 st1 is less than str2 so return false
  - 'a' => 3, => 0
  - 'v' => 1, => 0
  - 's' => 2, => 2
'rkqodlw', 'world
  - 'r' => 1, => 1
  = 'k' => 1, => 0
  - 'q' => 1, => 0
  - 'o' => 1, => 1
  - 'd' => l, => 1
  - 'l' => 1, => 1
  - 'w' => 1, => 1
  all letters in str2 have a count that is <= to counts in str1, return true

Data Structure, Algorithm
------------------------------------------
- Iterate over the characters in str2
  - If the count of the current char in str1 is ever less than the current count
  - Return false
- If we get through the whole iteration, return true

=end

def scramble(str1, str2)
  str2.each_char do |char|
    return false if str1.count(char) < str2.count(char)
  end
  
  true
end

def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
