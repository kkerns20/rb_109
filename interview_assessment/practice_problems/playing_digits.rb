=begin
Problem
------------------------------------------


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
- Convert n to an array of digits (reversed to ensure correct order)
- Initialize a product to 0
- Iterate over each digit with index
  - Increment the product by current_digit ** (p + index)
- Get both the quotient and remainder of integer division for product / n
- If the remainder is 0, return the quotient
- Otherwise, return -1
=end



def dig_pow(n, p)
  digits = n.digits.reverse
  product = 0
  digits.each_with_index do |digit, idx|
    product += digit**(p + idx)
  end
  
  k, remainder = product.divmod(n)
  remainder == 0 ? k : -1
end


p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
