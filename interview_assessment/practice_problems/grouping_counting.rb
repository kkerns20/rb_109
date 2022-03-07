=begin
Problem
------------------------------------------


Inputs: 1 array
Outputs: 1 hash or nil

Rules/Requirements
- empty or nil input returns nil instead of empty hash
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
[1, 1, 2, 2, 2, 3, 3]
{ 1 => 2, 2 => 3, 3 => 2 }

Data Structure, Algorithm
------------------------------------------
==> Iterate through the array, assign the element as a key and increment its value if that key is not already there, or create that key-value pair

- create an empty hash
- loop (iterate with each) through the array
  - if there exiists a key based on the current element
    - increment that key's value by 1
  - else
    - assign that element as a key and value of 1
  - end conditional
- end loop
- return hash
=end

# def group_and_count(arr)
#   hash = Hash.new
#   arr.each do |ele|
#     if hash.key?(ele)
#       hash[ele] += 1
#     else
#       hash[ele] = 1
#     end
#   end
#   hash
# end


def group_and_count(arr)
  return nil if arr.nil? || arr.empty? 
  arr.map.with_object({}) do |ele, hsh|
    hsh.key?(ele) ? hsh[ele] += 1 : hsh[ele] = 1
  end
end

def group_and_count(input)
  input.to_a.empty? ? nil : input.each_with_object(Hash.new(0)) { |w, c| c[w] += 1 }
end

input = [1,1,2,2,2,3]
p group_and_count(input) == {1=>2, 2=>3, 3=>1}
