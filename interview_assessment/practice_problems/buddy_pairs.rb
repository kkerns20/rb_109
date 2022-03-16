=begin
Problem
------------------------------------------
Girven two positive integers, the first pair of byddy pairs suck that n is between start and end and m can be greater than must be larger than n
If no buddy pairs, return 'Nothing'

Inputs: 2 integers
Outputs: 1 string or 'Nothing'

Rules/Requirements
- the sum of proper divisors plus 1 is the same as the 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
buddy(10, 50) returns [48, 75] 
48 divisors = 1, 2, 3, 4, 6, 8, 12, 16, 24 => sum = 76 which is 75 + 1
75 divisors = 1, 3, 5, 15, 25 => sum 49 = 48 + 1

start at 10 and find all divisors of 10, add up and see if one less than that number's divisors = 10 + 1

16+1 is 17
17 divisors != 16+1

18 1, 2, 3, 6, 9, = 21
20 => 1, 2, 4, 5, 10 = 22 -1 !=18 + 1

20 => 1, 2, 4, 5, 10 = 22 -1 
21 => 1, 3, 7 = 11 != 22



Data Structure, Algorithm
------------------------------------------
find n
- n_arr = []
- m_arr = []
- 1 upto end iterate with each for x
  - push to n arr start % x == 0
- m = n_arr sum -1
- from 1 upto m
  - push to m_arr
- n = m_arr sum - 1
- if n_arr sum - 1 == m and m_arr sum -1 == n
  -(n, m) as a string
- n_arr = []
- m_arr =[]
- start +=1





=end

def buddy(start, end)
  loop do
    n_arr = []
    m-arr = []
    (1...end).each do |x|
      n_arr << s if start % x == 0
    end
    m = n_arr.sum - 1
    (1...m).each do |y
end
