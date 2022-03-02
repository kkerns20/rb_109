=begin
Problem
------------------------------------------
Count the number of duplicats(case insensitive) in a string of numeric digits and letters

Inputs: 1 String
Outputs: 1 Integer

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

Data Structure, Algorithm
------------------------------------------
==> Iterate throught the string adding up how often a the count of a char is more than 1

--method--> duplicate_count(string) --> integer
- Initialize count to 0
- reassign string to string downcased
- Iterate through string's chars
  - if count of current char in string is > 1
    -increment count
- return count


=end

# def duplicate_count(string)
#   string = string.downcase
#   count = 0
#   string.chars.uniq.each do |char|
#     if string.count(char) > 1
#       count += 1
#     end
#   end
#   count
# end

def duplicate_count(string)
  string = string.downcase
  string.chars
        .uniq
        .count { |x| string.count(x) > 1 }
end

# def duplicate_count(text)
#   ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end

# def duplicate_count(text)
#   text.downcase.chars.group_by(&:to_s).count { |_, v| v.count > 1 }
# end

p duplicate_count("") ==  0
p duplicate_count("Indivisibilities") == 2
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
