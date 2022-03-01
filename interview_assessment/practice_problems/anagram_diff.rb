=begin
Problem
------------------------------------------
Given two words, how many letters do we need to remove to make them anagrams

Inputs: 2 string
Outputs: integer

Rules/Requirements
- empty string == 0 letters removed
- case insensitive, all will be lowercase

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10

Data Structure, Algorithm
------------------------------------------
==> Iterate through the alphabet and add the difference of each character count from word to word

--method--> anagram_difference(w1, w2) --> integer
- Initialize alphabet as array to alpha
- initialize sum to 0
- iterate through the alphabet
  - add the absolute value of difference in counts of the alphabet in each word to sum
- return sum

=end

def anagram_difference(w1, w2)
  alpha = ('a'..'z').to_a
  sum = 0
  
  alpha.each do |char|
    sum += (w1.count(char) - w2.count(char)).abs
  end 
  
  sum
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
