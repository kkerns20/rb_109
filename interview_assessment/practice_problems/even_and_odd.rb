=begin
Problem
------------------------------------------
Given an integer, output an array with even digits and odd digits

Inputs: Integer
Outputs: Array of two integers: even digits together and then odd

Rules/Requirements
- if no even or odd digits, return 0 for that output

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- create even_arr to []
- create odd_arr to []
- loop (iterate with each) through the digits of input
  - if even digit
    - append to even arr
  - elsif odd digit
    - append to odd arr
  - end conditional
- end loop
- create array of even joined to i and odd joined ot i

=end

def even_and_odd(n)
  even, odd = [], []
  n.to_s
    .chars
    .each {|x| x.to_i.even? ? even << x : odd << x}
  [even.join.to_i, odd.join.to_i]
end

def even_and_odd(n)
  [n.to_s.tr("13579", "").to_i, n.to_s.tr("02468", "").to_i]
end

p even_and_odd(126453)# == [264, 153]
