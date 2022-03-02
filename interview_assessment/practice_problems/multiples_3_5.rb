=begin
Problem
------------------------------------------
Find all of the multiples of 3 and 5 below the input string, then sum them up

Inputs: 1 integer
Outputs: 1 integer

Rules/Requirements
- must be multiple of 3 or 5, and multiples of both only count once.

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
input 10 
3, 5, 6, 9
sum 23

Data Structure, Algorithm
------------------------------------------
==> Divide and push multiples of 3 and 5, make sure all are uniq, then sum them up

- initialize sum to []
- initialize three to 3
- initialize 5 to 5
- until three > integer
  - append three to sum
  - increment three by 3
- until five > integer
  - append five to sum
  - increment five by 5
- call uniq on sum and then return sum


=end

def solution(int)
  sum = []
  three = 3
  five = 5

  until three > int - 1
    sum << three
    three += 3
  end

  until five > int -1
    sum << five
    five += 5
  end
  
  sum.uniq.reduce(:+)
end

# def solution(n)
#   multiples = []
#   (1...n).each do |i|
#     next unless i % 3 == 0 || i % 5 == 0
#     multiples << i
#   end
  
#   multiples.sum
# end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
