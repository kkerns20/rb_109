=begin
Problem
------------------------------------------
Given an array of words, return an array of the number of letter that occupy their positions in the alphabet for each word.

Inputs: 1 array of strings
Outputs: 1array of integers of same length as input

Rules/Requirements


Clarifying Questions


Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> Make an alphabet array of strings, compare the position of individual letter in string to position in alphabet array. Return an array with the number of matches per string object

Main Method
- create alphbet array
- iterate through given array using transformation
  - find number of elements whose indices mathch their corresponding index in alphabet array ==> Through Helper method

Helper Method
- intiailize count to 0
- iterate through given array 
  - if current element's index and that element's index within the alphabet array are the same
    - increment count by 1
- return count

=end

def solve(main_arr)
  alpha_arr = ('a'..'z').to_a
  main_arr.map { |string| find_same_pos(string, alpha_arr) }
end

def find_same_pos(string, alpha_arr)
  count = 0
  string.chars.each_with_index do |el, index|
    if index == alpha_arr.index(el.downcase)
      count += 1
    end
  end
  count
end

# def solve(strings)
#   strings.map{ |s| s.downcase.each_char.zip('a'..'z').count{ |a, b| a == b } }
# end

# ALPHA = Array('a'..'z').zip(1..26).to_h

# def solve(arr)
#   arr.map do |word|    
#     word
#       .downcase
#       .each_char
#       .with_index
#       .count { |ch, i| ALPHA[ch] == i + 1 }
#   end
# end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
