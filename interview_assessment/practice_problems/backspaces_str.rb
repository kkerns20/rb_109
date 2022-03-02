=begin
Problem
------------------------------------------
With '#' being a backspace, process a string

Inputs: 1 string
Outputs: 1 string

Rules/Requirements
- each # is a backspace

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

Data Structure, Algorithm
------------------------------------------
==> Iterate throught the string, add the char to a result arry, if current char is '#', pop the last char out.

- Initialize result array to first element of input string if it is not '#;
- Iterate through the chars of the string
  - if char is '#'
    - pop the element out of result array
    - else add current char
- return joined result array

=end

def clean_string(string)
  result = []
  string.chars.each do |char|
    char == '#' ? result.pop : result << char
  end
  result.join
end

def clean_string(str)
  str.chars.each_with_object([]) { |ch, o| ch == "#" ? o.pop : o << ch }.join
end

p clean_string('#asdf')
p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
