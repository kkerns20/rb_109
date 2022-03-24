
=begin
Problem
------------------------------------------
Given two strings, your job is to find out if there is a substring that appears in both string. Return true if it is in both and false if not. substring must be greater than one character

Inputs: 2 strings
Outputs:  Boolean

Rules/Requirements
- determine if a subtring of 2 char long is in the other substring
- return true or false
- empty strings will return false

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'Something', 'Home' ==> true
'ome' is in both strings, so return true

'BANANAS', 'bananas' ==> true
case insensitive

  '1234567', '541265'==>true
  '12' is in both

Data Structure, Algorithm
------------------------------------------
--method -- substring_text(str1, str2) -- boolean
arr1 assigned to downcased chars of str1 sent to find_subs
arr2 assigned to downcased chars of str2 sent to find_subs
loop through arr 1 with transformation
  loop through arr 2 for any equal to arr1
    does sub_str 1 == sub_str2
call any on return

- helper
find_subs(arr)
initialize subs to []
from 2 upto arr size do length
  arr each consectutive of size length 
    push to subs
return subs

=end

def substring_text(str1, str2)
  arr1 = find_subs(str1.downcase.chars)
  arr2 = find_subs(str2.downcase.chars) 
  arr1.map do |sub_str1|
    arr2.any? do |sub_str2|
      sub_str1 == sub_str2
    end
  end.any?
end


def find_subs(arr)
  subs = []
  2.upto(arr.size) do |length|
    arr.each_cons(length) { |sub_arr| subs << sub_arr }
  end
  subs
end

# p find_subs('home'.chars)

p substring_text('Something', 'Home') == true
p substring_text("Something", 'Fun') == false
p substring_text('Something', '') == false
p substring_text('', 'Something') == false
p substring_text('BANANAS', 'bananas') == true
p substring_text('', '') == false
p substring_text('1234567', '541265') == true

