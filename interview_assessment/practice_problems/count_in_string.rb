=begin
Problem
------------------------------------------
In this kata, you've to count lowercase letters in a given 
string and return the letter count in a hash with 'letter' 
as key and count as 'value'. The key must be 'symbol' instead 
of string in Ruby and 'char' instead of string in Crystal.

Inputs: lowercase string
Outputs: hash where the key is the letter and the value is the count

Rules/Requirements
- key must be a symbol

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create method to accept str as argument
  - intialize empty hash to hash
  - split apart str into an array by character
    - iterate through array
      - through element assignment, assign the current charactor as a key
      as a symbol and assign it to the count of that char in arr
      and 
  return hash

=end

# def letter_count(str)
#   hash = {}
#   arr = str.chars
#   arr.each do |char|
#     hash[char.to_sym] = arr.count(char)
#   end
#   hash
# end

# def letter_count(str)
#   str.chars.each_with_object(Hash.new(0)) { |c, h| h[c.to_sym] += 1 }
# end

def letter_count(str)
  str.chars.uniq.map { |letter| [letter.to_sym, str.count(letter)] }.to_h
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
