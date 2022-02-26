=begin
- Difficulty: **medium**
- [x] Problem Completed? 6:10

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes" \
  ^        ^        ^ \
  n=0     n=1     n=2

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

p nth_char(['yoda', 'best', 'has']) == 'yes' \
p nth_char([]) == '' \
p nth_char(['X-ray']) == 'X' \
p nth_char(['No', 'No']) == 'No' \
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
=end
=begin
Problem
------------------------------------------
Calculate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the array of strings

Inputs: 1 array of strings
Outputs: 1 string

Rules/Requirements
- only return a string

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
["yoda", "best", "has"]  -->  "yes" \
  ^        ^        ^ \
  n=0     n=1     n=2

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

Data Structure, Algorithm
------------------------------------------
==> Take array of strings, iterate through array and pull element at nth position to concatenate to output string

--> main method => nth_char(array) ==> string
- Create a nth set to 0
- Create output_str set to ''
- iterate through the array
  - append element at nth index to output_string
  - increment nth
- Return output_str

=end

def nth_char(array)
  nth = 0
  output_str = ''
  array.each do |element|
    output_str << element[nth]
    nth += 1
  end
  output_str
end

# def nth_char(words)
#   words.map.with_index{|x,i| x[i]}.join
# end

p nth_char(['yoda', 'best', 'has']) == 'yes' 
p nth_char([]) == '' 
p nth_char(['X-ray']) == 'X' 
p nth_char(['No', 'No']) == 'No' 
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
