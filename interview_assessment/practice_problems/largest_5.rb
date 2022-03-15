=begin
Problem
------------------------------------------
return greatest sequence of five consecutive digits found in a number given

Inputs: 1 string
Outputs: 1 integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
break apart string into 5 consective integers
find largest integer

Data Structure, Algorithm
------------------------------------------
- arr = []
- split string and call each cons 5 to arr 
- loop (iterate with map)
  - join and turn to integer
- end loop
- call max on ouput of map

=end

def solution(digits)
  arr = []
  digits.chars.each_cons(5) { |x| arr.push(x)}
  arr.map {|ele| ele.join.to_i }.max
end

p solution("12345678909125") == 90912
