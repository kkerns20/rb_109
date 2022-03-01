=begin
Problem
------------------------------------------
Take two integers and return the value of the first argument raies to the power of the second.
Return nil if the second argument is negative

Inputs: two integers
Outputs: 1 integer

Rules/Requirements
- the ** operator is disabled
- return nil if exponent is negative

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
Raise the base to its exponent. return nil if exponent is less than 0

--method power(base, exp) -- integer
- return nil if exp is less than 0
- initialize answer to 1
- start simple loop
  - break if exp == 0
  - multiply base times answer
  - decrement exp by 1
-return answer
=end

def power(base, exp)
  return nil if exp < 0
  answer = 1
  loop do 
    break if exp == 0
    answer *= base
    exp -= 1
  end
  answer
end

# def power(base, exponent)
#   exponent.times.inject(1){ |product| product * base } unless exponent < 0
# end

# def power(base, exponent)
#   (1..exponent).inject(1){|v| v * base} unless exponent < 0
# end

# def power(base, exponent)
#   return nil if exponent < 0
#   Array.new(exponent,base).inject(1,:*)
# end

p power(2, 3) #== 8
p power(10, 0) #== 1
p power(-5, 3) #== -125
p power(-4, 2) #== 16
