=begin
Problem
------------------------------------------
Create a function that will accept 2 strings and return the one who's stronger

Inputs: 2 uppercased strings
Outputs: 2 strings -> the stronger string or "Tie!" and "Unfair fignt!"

Rules/Requirements
- Each char power is equal to its place in the alphabet
- only uppercased letters
- only two groups
- total power is A + B + C
- if power is equal, it's a tie

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- find value of first string and compare with second string. If their values equal, return Tie!. If first value is greater than second return first or second (ternary)

- Create array of uppercased values
- create st1_val to 0
- create str2_val to 0
- iterate through str1
  - add value of index + 1 to str1_val of each char
- repeat with str2
- if str == str2
  - "Tie!"
else
    - str1_val > str2_val ? str1 : str2

=end

def battle(x, y)
  alphas = ('A'..'Z').to_a
  x_val, y_val = 0, 0
  x.chars.each {|a| x_val += alphas.index(a) + 1 }
  y.chars.each {|b| y_val += alphas.index(b) + 1 }
  if x_val == y_val
    "Tie!"
  else
    x_val > y_val ? x : y
  end
end

# def battle(x, y)
#   ['Tie!', x, y][x.sum <=> y.sum]
# end

# def battle(x, y)
#   a = x.split("").map{|z| z.ord-64}.inject(&:+)
#   b = y.split("").map{|z| z.ord-64}.inject(&:+)
#   a < b ? y : a > b ? x : "Tie!"
# end

p battle('ONE', 'TWO')
