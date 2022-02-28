=begin
Problem
------------------------------------------
Given an integer, return it as a string in expanded form

Inputs: 1 integer
Outputs: 1 string in expanded form

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
512 -> 500 + 10 + 2
512 % 100 = 12
12 % 10 = 2



Data Structure, Algorithm
------------------------------------------
==> Return the expanded form of an integer by taking the value at each multiple of 10

-- method --> expanded_form(int) --> string
- Initialize return arr
- from 1 upto int size iterate through the integer with mult as parameter
  - initialize remainder to the integer % by 10 raised to mult
  - push remainder to result array if it's not 0
  - decrement int by remainder
- reverse and join the return arr with '+'

=end

# def expanded_form(int)
#   result_arr = []
#   1.upto(int.size + 1) do |mult|
#     remainder = int % (10 ** mult)
#     # binding.pry
#     result_arr << remainder if remainder != 0
#     int -= remainder
#   end
#   result_arr.reverse.join(' + ')
# end

# Didn't work for large numbers, and can't figure out why

def expanded_form(int)
  arr_of_str = int.to_s.chars
  
  expanded_arr = arr_of_str.map.with_index do |num, idx|
    length = 1
    loop do
      break if length >= arr_of_str.size - idx
      num << '0'
      length += 1
    end
    num
  end
  
  expanded_arr.select { |str| str[0] != '0'}.join(' + ')
end

def expanded_form(num)
  num.to_s
     .chars
     .reverse
     .map.with_index { |d, idx| d.to_i * 10**idx }
     .reject(&:zero?)
     .reverse
     .join (' + ')
end

def expanded_form(int)
  result_arr = int.digits.map.with_index do |digit, idx|
    if idx == 0
      digit.to_s
    elsif digit == 0
      next
    else
      digit.to_s + '0' * idx
    end
  end
  result_arr.reject { |e| e.nil? || e == '0' }.reverse.join(' + ')
end


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
p expanded_form(402_370_022)
