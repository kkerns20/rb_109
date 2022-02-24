=begin
Pig Latin

Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldway !

Problem
------------------------------------------
take a string as input, move the first letter to the end of the string and append ay. 
Make this happen for each word, with punctuation untouched

Inputs: string of words delimited by spaces and/or punctuation
Outputs: new string mutated from one above

Rules/Requirements
- move first letter to end of word and append 'ay'
- leave punctuation alone.

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
Input: string of words
Intermediate: Array
Output: new string

Create method pig_it to accept str as argument
  - split string into words_arr
  - transform each word by passing it to pig_latin
  - return the joined words_arr with a space as separator
  
  
Helper Method:
create pig_latin
 - check to see if the word only includes letters
   - if so, reassemble word from index 1..-1 and append index 0 and append 'ay'
   - if not, return word
=end

def pig_it(str)
  words_arr = str.split
  words_arr.map! { |word| pig_latin(word) }.join(' ')
end

def pig_latin(word)
  if  word.downcase.chars.all? do |char| 
        ('a'..'z').include?(char)
      end
    word[1..-1] + word[0] + 'ay'
  else
    word
  end
end

# p pig_it('') == ''
p pig_it('X') == 'Xay'
p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
p pig_it('Hello world !') == 'elloHay orldway !'


# https://www.codewars.com/kata/520b9d2ad5c005041100000f

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

def pig_it text
  text.split(" ").map{ |word|["?", "!", "."].include?(word) ? word : word[1..-1] + word[0] + "ay" }.join(" ") 
end

# https://www.codewars.com/kata/5ae326342f8cbc72220000d2/train/ruby

=begin
Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.

string_expansion('3D2a5d2f') == 'DDDaadddddff'
string_expansion('3abc') == 'aaabbbccc'       # correct
string_expansion('3abc') != 'aaabc'           # wrong
string_expansion('3abc') != 'abcabcabc'       # wrong

If there are two consecutive numeric characters the first one is ignored.

string_expansion('3d332f2a') == 'dddffaa'

If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

string_expansion('abcde') == 'abcde'
Your code should be able to work for both lower and capital case letters.

string_expansion('') == ''

Problem
------------------------------------------
Given a string of alphanumeric characters, return a string with every alpha multiplied by the preceding numeric value

Inputs: string of alphanumeric values
Outputs: string of alpha

Rules/Requirements
- only utiltize the numeric that directly precedes an alpha to muliply alpha values after it until the next numeric

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
('3abc') == 'aaabbbccc'
Find numeric 3
  check to see if next char in str is alpha,
    if it is, mult that char by numeric and append to a result string
  

Data Structure, Algorithm
------------------------------------------
input: string
intermediate: Array
output: string

defined method string_expansion to accept str argument
  - set array that is the split of the string
  - initialize a multiplier to 1
  - initialize result string to empty string
  - iterate over every character in the array
    - if a numeric element 
      - replace multiplier
    - else
      - append multiplied element by mutliplier to result string
  - return resultant str
    
Helper Method:
Check to see if element is included in range from 0-9

=end


def string_expansion(str)
  arr = str.chars
  multiplier = 1
  result_str = ''
  arr.each do |char|
    # binding.pry
    if numeric?(char)
      multiplier = char.to_i
    else
      result_str << char * multiplier
    end
  end
  result_str
end

def numeric?(char)
  ('0'..'9').include?(char)
end

def string_expansion(str)
  multiplier = 1
  result = ''
  str.chars.each do |char|
    multiplier = char.to_i if char =~ /[0-9]/
    result << char * multiplier if char =~ /[a-z]/i
  end
  result
end


def string_expansion(str)
  str.gsub(/([0-9]+)([a-z]+)/i) do
    n = $1[-1].to_i
    $2.chars.map { |char| char * n }.join
  end
end


p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'