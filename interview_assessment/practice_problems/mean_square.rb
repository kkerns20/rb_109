=begin
Problem
------------------------------------------
Accept 2 Arrays of Integers of equal length
- compare values of one array to the other
- square the absolute value difference
- return the average of those squared values

Inputs: 2 Arrays of integers
Outputs: 1 Float

Rules/Requirements
- Take difference of same index elements, square those values, and return a float of

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
==> Take difference of same index elements, square those values, and return a float of the average of those numbers

-- method solution(arr1, arr2)
- initialize result arr to []
- initialize index to 0
- start a simple loop
  - append arr1 at index minus arr2 at index squared to result
  -increment index
  - break if index equals arr1.length minus 1
- sum result array and turn to float
- divide by arr1 length

=end

def solution(arr1, arr2)
  result =[]
  index = 0
  loop do
    result << (arr1[index] - arr2[index]) ** 2
    index +=1
    break if index == arr1.size
  end
  result.reduce(&:+).to_f / arr1.size
end

def solution (arr1, arr2)
  arr1.map.with_index { |n, i| (n - arr2[i]).abs ** 2 }.sum.fdiv(arr1.length)
end

def solution (arr1, arr2)
  arr1.zip(arr2).map{|a,b| (a-b)**2}.sum.fdiv(arr1.size)
end

p solution([1, 2, 3], [4, 5, 6])  == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
