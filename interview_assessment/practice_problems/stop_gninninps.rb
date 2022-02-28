=begin
Problem
------------------------------------------
Take a string of one or more words, return string with words of 5 letters or more reversed.

Inputs: 1 String of words
Outputs: 1 String of words

Rules/Requirements
- only spin words of length >= 5
- string will consist of letters and spaces

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
"Hey fellow warriors" ==> "Hey wollef sroirraw"
Hey -> 3 characters, remain the same
fellow -> 6 chars, so its spun
warriors -> >= 5 chars, so its spun

Data Structure, Algorithm
------------------------------------------
==> Reverse all words >= 5 chars in length and return string in same order

--method --> spin_words(string) --> string
  - initialize return_arr to []
  - split the input string into words
  - iterate through those words
    - if word length < 5
      - push words to return_arr
    - if word length is 5 or greater
      - reverse the string and push to return_arr
  - join and return the return_arr

=end

# def spin_words(string)
#   return_arr = []
#   string.split.each do |word|
#     if word.length < 5
#       return_arr << word
#     else
#       return_arr << word.reverse
#     end
#   end
#   return_arr.join(' ')
# end

def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end
    

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test"
p spin_words("This is another test") == "This is rehtona test"
p spin_words('test') == 'test'
