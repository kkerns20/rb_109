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
words to split string 
set wind to = 0
set ind to = 0
arr = []
loop 
  - loop
    - arr at wind = word at wind at ind
    - increment ind
    - end 
    - increment wind
  - end
arr join

=end

def diag_1_sym(s)
  arr = []
  words = s.split("\n")
  words[0].size.times do |x|
    arr << []
  end
  words.map do |word|
    word.chars.map.with_index do |char, ind|
      arr[ind].append(char)
    end
    
  end
  arr.map(&:join).join("\n")
end

def rot_90_clock(strng)
  strng = diag_1_sym(strng)
  strng.split("\n").map(&:reverse).join("\n")
end

def oper(fct, s) 
  fct.call(s)
end

def selfie_and_diag1(s)
  arr = []
  s.split("\n").map do |x|
    arr.append x + '|'
  end
  diag_1_sym(s).split("\n").map.with_index do |y, i|
    arr[i] << y
  end
  arr.join("\n")
end

s = "abcd\nefgh\nijkl\nmnop"
t = "abcd\nefgh\nijkl\nmnop"

def diag_1_sym(string)
  transpose(string).join("\n")
end

def rot_90_clock(string)
  transpose(string).map(&:reverse).join("\n")
end

def selfie_and_diag1(string)
  string.split.zip(transpose(string)).map { |s| s.join("|") }.join("\n")
end

def oper(fct, s) 
  fct.call(s)
end

def transpose(string)
  string.split.map(&:chars).transpose.map(&:join)
end

p diag_1_sym(s)
p rot_90_clock(s)
p selfie_and_diag1(s)
