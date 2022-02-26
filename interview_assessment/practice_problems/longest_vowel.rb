=begin
Problem
------------------------------------------
Given a string, return the length of the longest vowel substring

Inputs: string
Outputs: integer

Rules/Requirements
- vowels are 'aeiou'

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
'codewarriors' has vowels of o, e, a, io, and the longest is 'io'

Data Structure, Algorithm
------------------------------------------
==> Search through the given string to find all of the substrings containing only vowel characters and return the longest of these substrings

-- main method --> solve(string) --> integer
  - initialize 'subs' to the return value of the find_subs array with the given a

=end

def solve(str)
  vowels = %w(a e i o u)
  subs = find_subs(str.chars)
  vowel_arr = subs.select do |str|
    str.chars.all? { |char| vowels.include?(char) }
  end
  vowel_arr.max { |str| str.size }.size
end

def find_subs(arr)
  sub_strings = []
  1.upto(arr.size) do |num|
    arr.each_cons(num) { |sub_arr| sub_strings << sub_arr.join }
  end
  sub_strings
  binding.pry
end

# p find_subs(%w(c o d e w a r r i o r s))

=begin
** MUCH QUICKER METHOD !!!

-- main method --> solve(str) --> integer
  -substitute all characters of given string that are not vowels with a space
  -split string at blank spaces
  -find string with greatest length
  -return length

=end

p solve("codewarriors") == 2 
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4 
p solve("ultrarevolutionariees") == 3 
p solve("strengthlessnesses") == 1 
p solve("cuboideonavicuare") == 2 
p solve("chrononhotonthuooaos") == 5 
p solve("iiihoovaeaaaoougjyaw") == 8