=begin
Problem
------------------------------------------
Given an integer, split into digits and sum, repeat until it's one digit

Inputs: 1 integer
Outputs: 1 integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- create a while loop
  - while int as a string size is does not equal 1
    - reassign integer to the integers digits summed
- return int

=end

# def digital_root(int)
#   while int.to_s.size > 1
#     int = int.digits.sum
#   end
#   int
# end

def digital_root(int)
  until int < 10
    int = int.digits.sum
  end
  int
end

# def digital_root(n)
#   n < 10 ? n : digital_root(n.digits.sum)
# end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2
