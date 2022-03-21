=begin
Problem
------------------------------------------
Given a string in camel case, convert it to kebab case

Inputs: 1 String
Outputs: 1 String

Rules/Requirements
- the returned string should only contain lowercase letters

Clarifying Questions
- camelCase
- kebab-case

Examples, Test Cases
------------------------------------------
kebabize('camelsHaveThreeHumps') ==> camels-have-three-humps
kebabize('camelsHave3Humps') ==> camels-have-humps

'camelsHaveThreeHumps' -> camelCase
'camels' + 'have' + 'three' + 'humps'
-->     sH        eT        eH
        s-h      e-t        e-h
        'camels-have-three-humps


Data Structure, Algorithm
------------------------------------------
==> Go through input string char by char to see when a lowercase is followed by an uppercase, if it is, lowercase the upper and add a '-' between them

-- method --> kebabize(str) --> string
- intialize an empty array kebab_str
- iterate through each character with index
  - if char is number, move on to next
  - if index is zero
    - push current element to kebab str downcased
  - if char is the same as itself capitalized
    - push a dash to kebab str
    - push char to kebab str downcased
  - else
    - push char to kebab str
- delete index 0 element if its a '-'
- join and return kebab str

=end

def kebabize(str)
  kebab_arr = []
  str.chars.each_with_index do |char, index|
    if char.to_i.to_s == char
      next
    elsif index == 0
      kebab_arr.push(char.downcase)
    elsif char == char.upcase
      kebab_arr.push('-', char.downcase)
    else
      kebab_arr.push(char)
    end
  end
  kebab_arr.delete_at(0) if kebab_arr[0] == '-'
  kebab_arr.join
end

def kebabize(str)
  str.delete('^A-Za-z').split(/(?=[A-Z])/).join('-').downcase
end

# REEEEECDDDDDDOOOOOOOOOOOO
=begin
Problem
------------------------------------------
Convert camel case into kebab case

Inputs: 1 string
Outputs: 1 string

Rules/Requirements
- returned string is lowercase without integers

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
myCamelHas3Humps - 'my-camel-has-humps'
subsitute out anything not an alpha
- iterate throught the chars of hte string and if the current char is the same as that character upcase, append a '-' and then that char downcase
- otherwise push to an output string

Data Structure, Algorithm
------------------------------------------
output = []
- gsub anything not an alpha with ''
- interate through chars of string with transformation
  - if char == char upcase AND output isn't empty
    push '-' + char.downcase
  - else
    push char.downcase
- join output

=end

def kebabize(str)
  output = []
  str = str.gsub(/[^a-zA-Z]/, '')
  str.chars.each do |x|
    if x == x.upcase && !output.empty?
      output << '-' + x.downcase
    else
      output << x.downcase
    end
  end
  output.join
end

p kebabize('myCamelHas3Humps')# == 'my-camel-has-humps'




p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'
p kebabize('EeQw') #== 'ee-qw'
