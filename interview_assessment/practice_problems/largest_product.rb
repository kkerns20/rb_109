=begin
Problem
------------------------------------------
Find the greatest product of 5 consecutive digits when given a string of digits

Inputs: 1 string of numerals
Outputs: 1 Integer

Rules/Requirements
- String will always have more than 5 digits

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- Generate array of all possible 5 character substrings from input string
- Iterate over the array, transforming each substring
  - get product of all digits in each substring
- Find the maximum value in the resulting (transformed) array

- Generate array of all possible 5 character substrings from input string as integers
  - Initialize an empty array to hold results
  - Iterate a loop from 0..string length - 5, tracking iteration/index number
    - Slice the section of the string beginning at current index with a length of 5
    - Append it to the results array
  - Return the results array
  
- Get product of all digits in each substring
  - Convert the substring into an array of chars
  - Iterate over the chars, turning each into an integer
  - Multiple all the integers in the resulting array and return the product
=end

def get_sub_nums(num_str)
  sub_nums = []
  (0..(num_str.size - 5)).each do |index|
    sub_nums << num_str[index, 5]
  end
  
  sub_nums
end

def digits_product(sub_str)
  sub_str.chars.map { |char| char.to_i}.reduce(:*)
end

def greatest_product(num_str)
  get_sub_nums(num_str).map do |sub_str|
    digits_product(sub_str)
  end
    .max
end

def greatest_product(n)
  n.chars.each_cons(5).map { |a| a.map(&:to_i).reduce(:*) }.max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
