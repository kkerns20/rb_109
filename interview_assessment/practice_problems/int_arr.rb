=begin
Problem
------------------------------------------
Return true if every element is an integer or float with no decimals or empty
false otherwise.

Inputs: 
Outputs: 

Rules/Requirements
- every element must be an integer, float with no decimal, or empty to return true
- return false otherwise

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
[1, 2, 3, 4]
each term is an integer so true

Data Structure, Algorithm
------------------------------------------
- return false if '' or nil
- return true if array is empty
- iterate with map
  - if element nil
    - false
    - elsif element to integer isnt the same as the element
  - else
    -  is element an integer? OR
    - is element floor == element OR
 - all?
  

=end

def is_int_array(arr)
  return false if arr == '' || arr == nil
  return true if arr.empty?
  arr.map do |x| 
    if x.nil?
      false
    elsif x.to_i != x
      false
    else
      x.integer? || x.floor == x
    end
  end.all?
end

def is_int_array(arr)
  arr.all? {|e| e % 1.0 == 0} rescue false
end

p is_int_array([1, 2, 3, 4]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(["-1"]) == false
