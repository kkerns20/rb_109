=begin
Problem
------------------------------------------


Inputs: 1 array
Outputs: 1 array

Rules/Requirements
- don't mutate the input array

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
['bella', 'label', 'roller'] == ['e', 'l', 'l']


Data Structure, Algorithm
------------------------------------------
reassign array to the return of
  - iterate through array and duplicate each word
- assign chars to the first word of arrays chars
- loop with select through chars
  - check and see if all words contain the char by replacing the char with ''

=end

def common_chars(array)
  array = array.map(&:dup)
  array.shift.chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

arr = ['bella', 'label', 'roller'] 
p common_chars(arr) == ['e', 'l', 'l']
p arr
