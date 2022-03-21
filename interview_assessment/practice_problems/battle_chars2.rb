=begin
Problem
------------------------------------------
Create a function that will accept 2 strings and return the one who's stronger

Inputs: 2 uppercased strings
Outputs: 2 strings -> the stronger string or "Tie!" 

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
- create array of lowercase values
- create st1_val to 0
- create str2_val to 0
- iterate through str1
- if in upper
  - add value of index as + 1 to str1_val of each char
- else
  - add value of index as float + 1 / 2 to str_val 
- repeat with str2
- if str == str2
  - "Tie!"
else
    - str1_val > str2_val ? str1 : str2

=end

def battle(x, y)
  upp_alphas = ('A'..'Z').to_a
  alphas = ('a'..'z').to_a
  x_val, y_val = 0, 0
  x.chars.each do |a| 
    if upp_alphas.include?(a)
      x_val += upp_alphas.index(a) + 1 
    else
      x_val += (alphas.index(a).to_f + 1) / 2
    end
  end
  y.chars.each do |b| 
    if upp_alphas.include?(b)
      y_val += upp_alphas.index(b) + 1 
    else
      y_val += (alphas.index(b).to_f + 1) / 2
    end
  end
  if x_val == y_val
    "Tie!"
  else
    x_val > y_val ? x : y
  end
end

KEY = (('A'..'Z').zip(1..26) + ('a'..'z').zip((0.5..13).step(0.5))).to_h

def battle(x, y)
  a, b = [x, y].map { |s| s.chars.sum { |c| KEY[c] } }
  ['Tie!', x, y][a<=>b]
end

def battle(x, y)
  return y if x.empty?
  return x if y.empty?
  a, b = " abcdefghijklmnopqrstuvwxyz", " ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  c,d = [x,y].map{|j| j.chars.map{|i| i.upcase == i ? b.index(i) : a.index(i).fdiv(2)}.reduce(:+)}
  c == d ? "Tie!" : c > d ? x : y
end

p battle('ONE', 'TWO')
p battle('One', 'Two')

