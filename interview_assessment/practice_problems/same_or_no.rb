=begin
Problem
------------------------------------------
Check to see if two input arrays are the 'same'. Multiplicities will be the number of times that it appears

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
- sort both arrays
- loop (iterate with each) over array 1
  - if array 1 element squared == array 2 element at same index
    - go to next element
  - else
    false
- end loop
- return true

=end

def comp(arr1, arr2)
  arr1 = arr1.sort
  arr2 = arr2.sort
  arr1.each_with_index do |x, i| 
    if x ** 2 == arr2[i]
      next
    else
      return false
    end
  end 
  true
end

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
p comp(a, b)
