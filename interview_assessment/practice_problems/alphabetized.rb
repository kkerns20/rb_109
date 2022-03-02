=begin
Problem
------------------------------------------
Given a string, concatenate string into new string in case insensitively alphabeetical order of appearance. White space and punctuation is removed

Inputs: 1 String
Outputs: 1 String joined

Rules/Requirements
- empty string returns empty string

Clarifying Questions
- 

Examples, Test Cases
------(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"), "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ")
a appeared first then next would be another a but its retains it's capitalization

Data Structure, Algorithm
------------------------------------------
==> Sort the string based on the letters downcase and append the letter to that spot

-Initialize result to []
- Delete all non alpha characters and split into chars
- Sort_by through arr based on current element  down cased
- join result

=end

def alphabetized(string)
  string = string.delete('^A-Za-z')
  string
        .chars
        .sort_by { |char| char.downcase }
        .join
end

alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a" 
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ" 
