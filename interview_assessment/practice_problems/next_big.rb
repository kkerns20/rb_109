=begin
Problem
------------------------------------------
Create a method that takes a positive integer number and returns the next bigger number formed from the same digits

Inputs: 1 integer
Outputs: 1 integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

Data Structure, Algorithm
------------------------------------------
Find maximum number from given digits. Iterate through every number between given and max and see if the digits of that number == the digits of the input

-- method -- next_bigger_num(int) ==> int
- return -1 if int < 10 OR max_num == int
- output = []
- find the max_num of the input
- from input + 1 up to  max_num do num
  - push to output if num's digits sorted == int digits sorted
return output at index 0


--Helper -- max_num(int)
- sort the digits and reverse them and join to i

=end

def max_num(int)
  int.digits.sort.reverse.join.to_i
end

def next_bigger_num(int)
  return -1 if int < 10 || max_num(int) == int
  output = []
  max = max_num(int)
  (int + 1).upto(max) do |num|
    output << num if num.digits.sort == int.digits.sort
  end
  output[0]
end

def next_bigger(n)
  chars = n.to_s.chars
  (0..chars.length-2).reverse_each do |i|
    (i+1..chars.length-1).reverse_each do |j|
      if chars[i] < chars[j]
        chars[i], chars[j] = chars[j], chars[i]
        return (chars.first(i+1)+chars.last(chars.length-1-i).sort).join.to_i
      end
     end
  end
  -1
end

p max_num(123354)

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
