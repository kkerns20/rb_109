=begin
- Difficulty: **medium**
- [x] Problem Completed?

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
=end

=begin
Problem
------------------------------------------
Given a string of integers, return the number of odd-numbered substrings that can be formed

Inputs: 1 string of integers
Outputs: 1 integer

Rules/Requirements
- return a count of all of the odd numbered substrings that can be formed

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
Iterate through array of all substrings of integers, count all of the odd numbered substrings, return count

--> main method => solve(string) ==> integer
- break apart input string into an array and pass to helper method
- save helper method to substring array
- Create odd_arr set to []
- Iterate through array of substrings
  - If the substring, as an integer, is odd
    - Append to odd_num Array
- return odd_arr size

Helper method find_subs(arr)
- create substrings array set to []
- from 1 up to the array size with num as parameter
  - call each_cons to collect all consectutive substrings
    - append each sub array as joined to integer to sub strings array
- return substrings
=end

def solve(string)
  substring_arr = find_subs(string.chars)
  odd_arr = []
  substring_arr.each do |sub_str|
    odd_arr << sub_str if sub_str.odd?
  end
  
  odd_arr.count
end

def find_subs(arr)
  substr_arr = []
  1.upto(arr.size) do |num|
    arr.each_cons(num) { |sub_arr| substr_arr << sub_arr.join.to_i }
  end
  
  substr_arr
end

# def solve(s) 
#   counter = 0
  
#   0.upto(s.size - 1) do |index|
#     1.upto(s.size - index) do |length|
#       slice = s[index, length]
#       counter += 1 if slice.to_i.odd?
#       end
#     end
#   counter
# end

# def solve(s) 
#   s.chars.map.with_index{|n,i| n.to_i.odd? ? i+1 : 0}.reduce(:+)
# end

# def solve(s) 
#   substring_array = []
#   (0..s.length-1).each do |first|
#     (first..s.length-1).each do |last|
#       substring_array << s[first..last] if s[first..last].to_i.odd?
#     end
#   end
#   substring_array.count
# end

p solve("1341") == 7 
p solve("1357") == 10 
p solve("13471") == 12 
p solve("134721") == 13 
p solve("1347231") == 20 
p solve("13472315") == 28