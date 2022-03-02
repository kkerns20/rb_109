=begin
https://www.codewars.com/kata/55c6126177c9441a570000cc


Problem
------------------------------------------
Given a string of weights, sort the weights based on the sum of their digits. If the same sum arises, sort based on string

Inputs: 1 String
Outputs: 1 String

Rules/Requirements
- sum digits to sort the weights
- could have leading and trailing whitespaces
- and  more than a unique whitespace between two consecutive numbers
- all numbers pos
- list can be empty --> return empty string

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

"100 180 90 56 65 74 68 86 99"

Data Structure, Algorithm
------------------------------------------
==> Take the string, split it, add the digits, sort based on those sums, return weights sorted.

--method--> order_weight(string) --> string
- split the string into an array of weights
- iterate through the array
  - calculate the sum of the digits in each weight
  - add sum then weight to result as a array
- sort the result array
- iterate through with transformation to collect weights and join


=end

def order_weight(str)
  str = str.strip
  weights = str.split
    .map do |wgt|
      [wgt, wgt.to_i.digits.sum]
    end
    .sort_by { |wgt| wgt[1] }
    .chunk_while { |a, b| a[1] == b[1] }.to_a
    .map do |grp|
      grp.sort_by { |wgt| wgt[0] }
         .map { |x| x[0] }
    end
    .flatten
    .join(' ')
end

# Codewars 1 liner
def order_weight(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end


def order_weight(string)
  string.split.map do |wgt|
    sum = wgt.to_i.digits.reduce(:+)
    [sum, wgt]
  end
    .sort.map { |sum, wgt| wgt }.join(' ')
end

    
    

p order_weight("103 123 321 213 4444 99 2000") == "2000 103 123 213 321 4444 99"
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") == "11 11 2000 10003 22 123 1234000 44444444 9999"