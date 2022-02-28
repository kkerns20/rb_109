=begin
Problem
------------------------------------------
Generate a hashtag based on input string.

Inputs: 1 String
Outputs: 1 String starting with '#'

Rules/Requirements
- must start with hashtab
- all words must be capitalized
- final result > 140, returns false
- input or result empty, return false

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"Do We have A Hashtag" == "#DoWeHaveAHashtag"

Data Structure, Algorithm
------------------------------------------
==> Split apart input string, capitalize each word, concatenate together.

-- method --> generateHashtag(str) --> false or string

- return false if str is empty
- split apart str to str_arr
- Initialize hashtag to "#"
- iterate through str_arr
  - capitalize each word and append to hashtag
- hashtag length >140 return false, else hashtag

=end

def generateHashtag(str)
  return false if str.empty?
  str_arr = str.split
  hashtag = "#"
  str_arr.each {|word| hashtag << word.capitalize }
  length_check = hashtag.delete("#")
  return false if length_check.empty?
  length_check.length > 139 ? false : hashtag
end
  
def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " "*140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a"*139) == "#A" + "a"*138
p generateHashtag("a" * 140) == false
