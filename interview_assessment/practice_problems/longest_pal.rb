=begin
Problem
------------------------------------------
Find the length of hte londest substring in the given string that is the smae in reverse.

As an example, if the input was I like racecars that go fast, the stubstring racecar length would be 7

Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
method -- longest_palindrome(str) -- integer
return 0 if str is empty
set array to the return value of finding the sub strings of str chars
iterate with transformation
  find sub arr length if sub arr is a palindrome
compact the return and find the max value

-- helper -- find_subs(arr)
set subs to empty arr
from 1 up to arr size
  iterate through the array with each consecutive length
    push the sub arr to subs
return subs

-- helper -- palindrome?(arr)
arr == array reversed

=end

def longest_palindrome(str)
  return 0 if str.empty?
  arr = find_subs(str.chars)
  arr.map do |sub|
    sub.length if palindrome?(sub)
  end.compact.max
end

def find_subs(arr)
  subs = []
  1.upto(arr.size) do |l|
    arr.each_cons(l) { |sub_arr| subs << sub_arr}
  end
  subs
end

def palindrome?(arr)
  arr == arr.reverse
end

p longest_palindrome('') == 0
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2 
p longest_palindrome('baablkjl12345432133d') == 9
p longest_palindrome('I like racecars that go fast') == 7
