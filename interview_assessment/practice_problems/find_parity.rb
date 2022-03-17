=begin
Problem
------------------------------------------
Given an array containing integers, either all odd except one or even except one, find the outlier n

Inputs: 1 array
Outputs: 1 integer

Rules/Requirements
- find the only odd or only even number

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
[2, 4, 0, 100, 4, 11, 2602, 36]

2.even? yes -> even_arr
4 even? yes -> even arr
0 even?
11 even? no -> odd_ arr

return array of size 1
Data Structure, Algorithm
------------------------------------------
set even_arr and odd_arr to []
loop (iterate with each)
  - if element is even
    - push to even arr
  - else
    - push to odd_arr
  - end conditional
- end loop
- even array size == 1 ?
  - return even arr at idex 0
  - return odd arr at index 0

=end

def find_outlier(int)
  e_arr, o_arr = [], []
  int.each {|x| x.even? ? e_arr << x : o_arr << x }
  e_arr.size == 1 ? e_arr[0] : o_arr[0]
end

p find_outlier([0, 1, 2]) == 1
p find_outlier([0, 1, 2]) == 1
