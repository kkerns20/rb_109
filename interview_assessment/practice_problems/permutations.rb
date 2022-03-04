=begin
Problem
------------------------------------------
create all permutations of a non empty string and remove duplicates

Inputs: 1 String
Outputs: 1 array of strings

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- initialize perm to []
- call permutation on the the chars of the string and append to perm
- iterate through perm with transformation
  - join the sub array and call unique values

=end

def permutations(str)
  perm = []
  str.chars.permutation(str.length) do |p|
    perm << p
  end
  perm.map { |sub_arr| sub_arr.join }.uniq
end

def permutations(string)
  string.chars.permutation.map(&:join).uniq
end

p permutations('ab')
p permutations('aabb')
