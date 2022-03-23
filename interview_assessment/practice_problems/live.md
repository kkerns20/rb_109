# RB 109 Live Assessment Practice Problems #

1. - [x] [Repeater](#repeater)
2. - [x] [Double Consonants](#double-consonants)
3. - [x] [Rotate 13](#rotate-13)
4. - [x] [Longest Palindrome](#longest-palindrome)
5. - [ ] [Find Chidren](#find-children)
6. - [ ] [Double Consonants Alternative](#double-consonants-alternative)
7. - [ ] [Reversed Number](#reversed-number)
8. - [ ] [Get the Middle Character](#get-the-middle-character)
9. - [ ] [Rotation Pt 1](#rotation-pt-1)
10. - [ ] [Rotation Pt 2](#rotation-pt-2)
11. - [ ] [Rotation Pt 3](#rotation-pt-3)
12. - [ ] [1000 Lights](#1000-lights)
13. - [ ] [Next Largest Num](#next-largest-num)
14. - [ ] [Count Letters in Strings](#count-letters-in-strings)
15. - [ ] [Count Pairs in String](#count-pairs-in-string)
16. - [ ] [Return Substring Instance Count](#return-substring-instance-count)
17. - [ ] [Alphabet Symmetry](#alphabet-symmetry)
18. - [ ] [Longest Vowel Chain](#longest-vowel-chain)
19. - [ ] [Non Even Substrings](#non-even-substrings)
20. - [ ] [Substring Fun](#substring-fun)
21. - [ ] [Repeated Substring](#repeated-substring)
22. - [ ] [Typoglycemia Generator](#typoglycemia-generator)
23. - [ ] [Most Frequently Used Words in a Text](#most-frequently-used-words-in-a-text)
24. - [ ] [Detect Pangram](#detect-pangram)
25. - [ ] [Kebabize](#kebabize)
26. - [ ] [Dubstep](#dubstep)
27. - [ ] [Take a Ten Minute Walk](#take-a-ten-minute-walk)
28. - [ ] [Stop gninnipS My sdroW](#stop-gninnips-my-sdrow)
29. - [ ] [Nested Brackets](#nested-brackets)
30. - [ ] [Write Number in Expanded Form](#write-number-in-expanded-form)
31. - [ ] [Mexican Wave Variation 1](#mexican-wave-variation-1)
32. - [ ] [Sum Consecutives](#sum-consecutives)
33. - [ ] [Mexican Wave Variation 2](#mexican-wave-variation-2)
34. - [ ] [Persistent Bugger](#persistent-bugger)
35. - [ ] [Title Case](#title-case)
36. - [ ] [Count and Group Character Occurrences in a String](#count-and-group-character-occurrences-in-a-string)
37. - [ ] [Sum of Squared Divisors a Square](#sum-of-squared-divisors-a-square)
38. - [ ] [Find the Mine](#find-the-mine)
39. - [ ] [Scramblies](#scramblies)
40. - [ ] [Longest Alphabetical Substring](#longest-alphabetical-substring)
41. - [ ] [Hashtag Generator](#hashtag-generator)
42. - [ ] [Pete the Baker](#pete-the-baker)
43. - [ ] [Exponent Method](#exponent-method)
44. - [ ] [Where My Anagrams At?](#where-my-anagrams-at)
45. - [ ] [Determine Missing Letters](#determine-missing-letters)
46. - [ ] [Find Primes](#find-primes)
47. - [ ] [Find Some Substrings](#find-some-substrings)
48. - [ ] [Next Bigger Number](#next-bigger-number)
49. - [ ] [Split Strings](#split-strings)
50. - [ ] [Record Temps](#record-temps)
51. - [ ] [Anagram Difference](#anagram-difference)
52. - [ ] [Highest Scoring Word](#highest-scoring-word)
53. - [ ] [Replace with Alphabet Position](#replace-with-alphabet-position)
54. - [ ] [Sherlock on Pockets](#sherlock-on-pockets)
55. - [ ] [Capitalize Second of Third](#capitalize-second-of-third)
56. - [ ] [Difference of Two](#difference-of-two)
57. - [ ] [Vowel Back](#vowel-back)
58. - [ ] [Find Missing Letter](#find-missing-letter)
59. - [ ] [Word Scramble](#word-scramble)
60. - [ ] [Alphabetized Again](#alphabetized-again)
61. - [ ] [Anagram Detection](#anagram-detection)
62. - [ ] [Highest Scoring Word Again](#highest-scoring-word-again)
63. - [ ] [Rotate Matrix](#rotate-matrix)
64. - [ ] [Longest Common Prefix](#longest-common-prefix)
65. - [ ] [Consecutive Runs](#consecutive-runs)
66. - [ ] [Search Query](#search-query)
67. - [ ] [Repeated Substring 2](#repeated-substring-2)
68. - [ ] [Reverse String](#reverse-string)
69. - [ ] [Fizzbuzz](#fizzbuzz)
70. - [ ] [Remove Vowels](#remove-vowels)
71. - [ ] [Delete Digit](#delete-digit)
72. - [ ] [Multiples of 3 or 5](#multiples-of-3-or-5)
73. - [ ] [String Transformer](#string-transformer)
74. - [ ] [Largest Product in a Series](#largest-product-in-a-series)
75. - [ ] [Duplicate Encoder](#duplicate-encoder)
76. - [ ] [Backspaces in String](#backspaces-in-string)
77. - [ ] [Alphabetized](#alphabetized)
78. - [ ] [Tranform to Prime](#transform-to-prime)
79. - [ ] [Word to Digit](#word-to-digit)
80. - [ ] [Longest AE](#longest-ae)
81. - [ ] [Minimum Sub Length](#minimum-sub-length)
82. - [ ] [Two Sum](#two-sum)
83. - [ ] [Digital Root](#digital-root)

## Repeater ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every character is doubled.

p repeater('Hello') == "HHeelllloo" \
p repeater("Good job!") == "GGoooodd  jjoobb!!" \
p repeater('') == ''

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

def repeater(str)
  arr = str.chars
  arr.map {|ch| ch + ch}.join
end

p repeater('Hello') == "HHeelllloo" 
p repeater("Good job!") == "GGoooodd  jjoobb!!" 
p repeater('') == ''

```

---

## Double Consonants ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

double_consonants('String') == "SSttrrinngg" \
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!" \
double_consonants("July 4th") == "JJullyy 4tthh" \
double_consonants('') == ""

```ruby
=begin
Problem
------------------------------------------
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

Inputs: 1 string
Outputs: 1 string

Rules/Requirements
- don't mutate string

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create an array of all consonants
- initialize arr to the chars of the string
- iterate through the arr with transformation
  - if the current char is aincluded in consonants
    - double that letter
  - else
    - leave the char alone
- join the arr

=end

def double_consonants(str)
  consonants = ('A'..'Z').zip('a'..'z').flatten - %w(A E I O U a e i o u)
  arr = str.chars
  arr.map {|ch| consonants.include?(ch) ? ch + ch : ch}.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
```
---

## Rotate 13 ##

- Difficulty: **med/hard**
- [x] Problem Completed?

How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can decipher it? According to Wikipedia, [ROT13](http://en.wikipedia.org/wiki/ROT13) is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc.

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.

Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"
Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create alphabet array
initialize arr to the chars of input string
interate with transformation over arr with index
  - if alphabet includes current char downcased
    - find the char 13 indices away if index is less than < 13 or - 13 if >=13  
  - else
    - char
    repeat dependent on case
- join arr

=end

# def rot13(str)
#   alpha = ('a'..'z').to_a
#   arr = str.chars
#   arr.map.with_index do |char|
#     if alpha.include?(char.downcase) && 
#        char.downcase == char
#       if alpha.index(char) < 13
#         alpha[alpha.index(char.downcase) + 13]
#       else
#         alpha[alpha.index(char.downcase) - 13]
#       end
#     elsif alpha.include?(char.downcase) && 
#           char.upcase == char
#       if alpha.index(char.downcase) < 13
#         alpha[alpha.index(char.downcase) + 13].upcase
#       else
#         alpha[alpha.index(char.downcase) - 13].upcase
#       end
#     else
#       char
#     end
#   end.join
# end

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

p rot13("EBG13 rknzcyr.") == "ROT13 example."
p rot13("This is my first ROT13 excercise!") == "Guvf vf zl svefg EBG13 rkprepvfr!"
p rot13("Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.")

```
---

## Longest Palindrome ##

- Difficulty: **easy**
- [x] Problem Completed?

Find the length of the longest substring in the given string that is the same in reverse.

Example: \
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

p longest_palindrome('') == 0 \
p longest_palindrome('a') == 1 \
p longest_palindrome('aa') == 2 \
p longest_palindrome('baa') == 2 \
p longest_palindrome('aab') == 2 \
p longest_palindrome('baabcd') == 4 \
p longest_palindrome('baab1kj12345432133d') == 9 \
p longest_palindrome("I like racecars that go fast") == 7 \
p longest_palindrome("aa aa") == 5 \
p longest_palindrome('abcde') == 1

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create find subs array
initialize subs to []
1 upto the size of the array work with length
  split the string by chars and call each_cons based on length
  add the sub_arr to subs
return sub

create palindrome?
  str.reverse == str

create longest_palidrome(str)
  get subs strong find_subs
  iterate through subs with transformation
    if palidrome?
      - get length of string
  get max
=end

def find_subs(str)
  subs = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length) { |sub_arr| subs << sub_arr.join }
  end
  subs
end

def palindrome?(str)
  str.reverse == str
end

def longest_palindrome(str)
  return 0 if str.empty?
  subs = find_subs(str)
  subs.map do |sub_arr|
    palindrome?(sub_arr) ? sub_arr.length : 0
  end.max
end


p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baab1kj12345432133d') == 9
p longest_palindrome("I like racecars that go fast") == 7
p longest_palindrome("aa aa") == 5
p longest_palindrome('abcde') == 1


```
---

## Find Children ##

- Difficulty: **easy**
- [ ] Problem Completed?

Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, \
i.e. "aAbaBb" => "AaaBbb".

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```
---

## Double Consonants Alternative ##

- Difficulty: **easy**
- [ ] Problem Completed?

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg" \
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!" \
double_consonants("July 4th") == "JJullyy 4tthh" \
double_consonants('') == ""

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```
---

## Reversed Number ##

- Difficulty: **easy**
- [ ] Problem Completed?

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

reversed_number(12345) == 54321 \
reversed_number(12213) == 31221 \
reversed_number(456) == 654 \
reversed_number(12000) == 21 # No leading zeros in return value! \
reversed_number(12003) == 30021 \
reversed_number(1) == 1 \
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```
---

## Get The Middle Character ##

- Difficulty: **easy**
- [ ] Problem Completed?

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

Copy Code
center_of('I love ruby') == 'e' \
center_of('Launch School') == ' ' \
center_of('Launch') == 'un' \
center_of('Launchschool') == 'hs' \
center_of('x') == 'x'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```
---

## Rotation Pt 1 ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
```

---

## Rotation Pt 2 ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a method that can rotate the last n digits of a number. For example:

Note; that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

rotate_rightmost_digits(735291, 1) == 735291 \
rotate_rightmost_digits(735291, 2) == 735219 \
rotate_rightmost_digits(735291, 3) == 735912 \
rotate_rightmost_digits(735291, 4) == 732915 \
rotate_rightmost_digits(735291, 5) == 752913 \
rotate_rightmost_digits(735291, 6) == 352917
```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
```

---

## Rotation pt 3 ##

- Difficulty: **medium**
- [ ] Problem Completed?

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

max_rotation(735291) == 321579 \
max_rotation(3) == 3 \
max_rotation(35) == 53 \
max_rotation(105) == 15 # the leading zero gets dropped \
max_rotation(8_703_529_146) == 7_321_609_845

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
```

---

## 1000 Lights ##

- Difficulty: **medium**
- [ ] Problem Completed?

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on \
round 2: lights 2 and 4 are now off; 1, 3, 5 are on \
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on \
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on \
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on \
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```

## Next Largest Num ##

- Difficulty: **medium**
- [ ] Problem Completed?

-----------------------INSTRUCTIONS--------------------------------------
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:
If no bigger number can be composed using those digits, return -1:

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


```

---

## Count Letters in String ##

- Difficulty: **medium**
- [ ] Problem Completed?

Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1} \
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1} \
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
```

---

## Count Pairs in String ##

- Difficulty: **medium**
- [ ] Problem Completed?

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0 \
If there are more pairs of a certain number, count each pair only once. \
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s) \
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2 \
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4 \
...because there are 4 pairs: 2, 20, 6 and 2 (again)

p pairs([1, 2, 5, 6, 5, 2]) == 2 \
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4 \
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 \
p pairs([1000, 1000]) == 1 \
p pairs([]) == 0 \
p pairs([54]) == 0

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


 
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
```

---

## Return Substring Instance Count ##

- Difficulty: **medium**
- [ ] Problem Completed?

-----------------------INSTRUCTIONS--------------------------------------
Complete the solution so that it returns the number of times the search_text is found within the full_text.

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
```

---

## Alphabet Symmetry ##

- Difficulty: **medium**
- [ ] Problem Completed?

Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.


p solve(["abode","ABc","xyzD"]) == [4,3,1] \
p solve(["abide","ABc","xyz"]) == [4,3,0] \
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7] \
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
```

---

## Longest Vowel Chain ##

- Difficulty: **medium**
- [ ] Problem Completed?

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

p solve("codewarriors") == 2 \
p solve("suoidea") == 3 \
p solve("iuuvgheaae") == 4 \
p solve("ultrarevolutionariees") == 3 \
p solve("strengthlessnesses") == 1 \
p solve("cuboideonavicuare") == 2 \
p solve("chrononhotonthuooaos") == 5 \
p solve("iiihoovaeaaaoougjyaw") == 8

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
```
---

## Non Even Substrings ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

p solve("1341") == 7 \
p solve("1357") == 10 \
p solve("13471") == 12 \
p solve("134721") == 13 \
p solve("1347231") == 20 \
p solve("13472315") == 28

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
```

---

## Substring Fun ##

- Difficulty: **medium**
- [ ] Problem Completed?

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes" \
  ^        ^        ^ \
  n=0     n=1     n=2

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

p nth_char(['yoda', 'best', 'has']) == 'yes' \
p nth_char([]) == '' \
p nth_char(['X-ray']) == 'X' \
p nth_char(['No', 'No']) == 'No' \
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
```

---

## Repeated Substring ##

- Difficulty: **medium**
- [ ] Problem Completed?

For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string s = "ababab"
the answer is ["ab", 3]

Example #2:

for string s = "abcde" the answer is "abcde" because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

p f("ababab") == ["ab", 3] \
p f("abcde") == ["abcde", 1]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end



p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
p f("apeapeapeape") == ["ape", 4]
p f("poopspoops") == ["poops", 2]
```

---

## Typoglycemia Generator ##

- Difficulty: **hard**
- [x] Problem Completed?

There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: [here](http://en.wikipedia.org/wiki/Typoglycemia)
=end

p scramble_words('professionals') == 'paefilnoorsss' \
p scramble_words('i') == 'i' \
p scramble_words('') == '' \
p scramble_words('me') == 'me' \
p scramble_words('you') == 'you' \
p scramble_words('card-carrying') == 'caac-dinrrryg' \
p scramble_words("shan't") == "sahn't" \
p scramble_words('-dcba') == '-dbca' \
p scramble_words('dcba.') == 'dbca.' \
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
```

---

## Most Frequently Used Words in a Text ##

- Difficulty: **hard**
- [X] Problem Completed?

Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.") \
returns => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") \
returns => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't") \
returns => ["won't", "wont"]

Bonus points (not really, but just for fun): \
Avoid creating an array whose memory footprint is roughly as big as the input text. \
Avoid sorting the entire array of unique words.

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"] \
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"] \
p top_3_words("  //wont won't won't ") == ["won't", "wont"] \
p top_3_words("  , e   .. ") == ["e"] \
p top_3_words("  ...  ") == [] \
p top_3_words("  '  ") == [] \
p top_3_words("  '''  ") == [] \
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
```

---

## Detect Pangram ##

- Difficulty: **medium**
- [] Problem Completed?

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

p panagram?("The quick brown fox jumps over the lazy dog.") == true \
p panagram?("This is not a pangram.") == false

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
```

---

## Kebabize ##

- Difficulty: **medium**
- [] Problem Completed?

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps \
kebabize('camelsHave3Humps') // camels-have-humps

Notes:

the returned string should only contain lowercase letters

p kebabize('myCamelCasedString') == 'my-camel-cased-string' \
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
```

---

## Dubstep ##

- Difficulty: **medium**
- [x] Problem Completed?

Polycarpus works as a [here](Dhttps://www.codewars.com/kata/551dc350bf4e526099000ae5/train/rubyJ) in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.

Input \
The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters

Output \
Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

Examples \
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  =>  WE ARE THE CHAMPIONS MY FRIEND \
p song_decoder("AWUBBWUBC") == "A B C" \
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C" \
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") == "WE ARE THE CHAMPIONS MY FRIEND"
```

---

## Take a Ten Minute Walk ##

- Difficulty: **medium**
- [x] Problem Completed?

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true \
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false \
p is_valid_walk(['w']) == false \
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
```

---

## Stop gninnipS My sdroW ##

- Difficulty: **medium**
- [] Problem Completed?

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw" \
p spin_words("This is a test") == "This is a test" \
p spin_words("This is another test") == "This is rehtona test" \
p spin_words('test') == 'test'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test" 
p spin_words("This is another test") == "This is rehtona test"
p spin_words("test") == "test"
```

---

## Nested Brackets ##

- Difficulty: **hard**
- [ ] Problem Completed?

Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.

p paired?('[]]') == false \
p paired?(']][[') == false \
p paired?('{}{}[()]') == true \
p paired?('{}{}[()') == false \
p paired?('[({]})') == false \
p paired?('\left(\begin{array}{cc} \frac{1}{3} & x\\ ' + \
  '\mathrm{e}^{x} &... x^2 \end{array}\right)') == true \
p paired?('(((185 + 223.85) * 15) - 543)/2') == true

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p paired?('[]]') == false
p paired?(']][[') == false
p paired?('{}{}[()]') == true
p paired?('{}{}[()') == false
p paired?('[({]})') == false
p paired?('\left(\begin{array}{cc} \frac{1}{3} & x\\ ' +
  '\mathrm{e}^{x} &... x^2 \end{array}\right)') == true
p paired?('(((185 + 223.85) * 15) - 543)/2') == true
```

---

## Write Number in Expanded Form ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form.

expanded_form(12); # Should return '10 + 2' \
expanded_form(42); # Should return '40 + 2' \
expanded_form(70304); # Should return '70000 + 300 + 4' \
NOTE: All numbers will be whole numbers greater than 0. \

If you liked this kata, check out part 2!!

p expanded_form(12) == '10 + 2' \
p expanded_form(42) == '40 + 2' \
p expanded_form(70304) == '70000 + 300 + 4'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
```

---

## Mexican Wave Variation 1 ##

- Difficulty: **hard**
- [ ] Problem Completed?

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules
  The input string will always be lower case but maybe empty. \
  If the character in the string is whitespace then pass over it as if it was an empty seat.

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"] \
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"] \
p wave("") == [] \
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"] \
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
```

---

## Sum Consecutives ##

- Difficulty: **hard**
- [ ] Problem Completed?

You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2] \
p sum_consecutives([1,1,7,7,3]) == [2,14,3] \
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3] 
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

```

---

## Mexican Wave Variation 2 ##

- Difficulty: **hard**
- [ ] Problem Completed?

Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules

 1. The input string will always be lower case but maybe empty.
 2. If the character in the string is whitespace then pass over it
 3. Leave each fourth letter unaltered—-do not make those letters uppercase

p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"] \
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"] \
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"] \
p wave("") == []

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
  
p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]
p wave("") == []
```

---

## Persistent Bugger ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                # and 4 has only one digit

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                # 1*2*6=12, and finally 1*2=2

persistence(4) # returns 0, because 4 is already a one-digit number

p persistence(39) == 3 \
p persistence(4) == 0 \
p persistence(25) == 2 \
p persistence(999) == 4

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
```

---

## Title Case ##

- Difficulty: **medium**
- [ ] Problem Completed?

A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings' \
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows' \
p title_case('the quick brown fox') == 'The Quick Brown Fox'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
```

---

## Count and Group Character Occurrences in a String ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]} \
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]} \
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]} \
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]} \
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]} \
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
# p valid_char?('a')
# p valid_char?('!')

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("P%c5Ve6OtTFsh-Y4lnBlpiM5%+beCTdjNiO,nxG.X!jjzp*Jt.7tB^Nt8^VScr.BQ1") == {6=>["t"], 4=>["b", "j", "n"], 3=>["c", "p"], 2=>["5", "e", "i", "l", "o", "s", "v", "x"], 1=>["1", "4", "6", "7", "8", "d", "f", "g", "h", "m", "q", "r", "y", "z"]}
```



---

## Sum of Squared Divisors a Square ##

- Difficulty: **medium**
- [ ] Problem Completed?

Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number.

The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.

p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]] \
p list_squared(42, 250) == [[42, 2500], [246, 84100]] \
p list_squared(250, 500) == [[287, 84100]]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]
```

---

## Find the Mine ##

- Difficulty: **easy**
- [ ] Problem Completed?

You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0] \
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1] \
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1] \
p mine_location([ [1, 0], [0, 0] ]) == [0, 0] \
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0] \
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mine_location([ [1, 0], [0, 0] ]) == [0, 0]
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
```

---

## Scramblies ##

- Difficulty: **easy**
- [ ] Problem Completed?

Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included. \
Performance needs to be considered \
Input strings s1 and s2 are null terminated.

p scramble('rkqodlw', 'world') == true \
p scramble('cedewaraaossoqqyt', 'codewars') == true \
p scramble('katas', 'steak') == false \
p scramble('rkqodlw','world') == true \
p scramble('cedewaraaossoqqyt','codewars') == true \
p scramble('katas','steak') == false \
p scramble('scriptjava','javascript') == true \
p scramble('scriptingjava','javascript') == true

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
```


---

## Longest Alphabetical Substring ##

- Difficulty: **medium**
- [ ] Problem Completed?

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

p longest('asd') == 'as' \
p longest('nab') == 'ab' \
p longest('abcdeapbcdef') == 'abcde' \
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt' \
p longest('asdfbyfgiklag') =='fgikl' \
p longest('z') == 'z'
p longest('zyba') == 'z'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
```

---

## Hashtag Generator ##

- Difficulty: **medium**
- [ ] Problem Completed?

The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#). \
All words must have their first letter capitalized. \
If the final result is longer than 140 chars it must return false. \
If the input or the result is an empty string it must return false. \

Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata" \
"    Hello     World   "                  =>  "#HelloWorld" \
""                                        =>  false

p generateHashtag("") == false \
p generateHashtag(" "*200) == false \
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag" \
p generateHashtag("Codewars") == "#Codewars" \
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice" \
p generateHashtag("Codewars is nice") == "#CodewarsIsNice" \
p generateHashtag("code" + " "* 140 + "wars") == "#CodeWars" \
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false \
p generateHashtag("a" *139) == "#A" + "a"* 138 \
p generateHashtag("a" * 140) == false

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p generate_hashtag("") == false
p generate_hashtag(" " * 200) == false
p generate_hashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generate_hashtag("Codewars") == "#Codewars"
p generate_hashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generate_hashtag("Codewars is nice") == "#CodewarsIsNice"
p generate_hashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generate_hashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generate_hashtag("a" * 139) == "#A" + "a" * 138
p generate_hashtag("a" * 140) == false
```

---

## Pete the Baker ##

- Difficulty: **medium**
- [ ] Problem Completed?

Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

Examples:

// must return 2 \
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200});

// must return 0 \
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2 \
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11 \
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0 \
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0 \
p cakes({"eggs"=>4, "flour"=>400},{}) == 0 \
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

```

---

## Mean Square Error ##

- Difficulty: **medium**
- [ ] Problem Completed?

Complete the function that

accepts two integer arrays of equal length \
compares the value each member in one array to the corresponding member in the other \
squares the absolute value difference between those two values \
and returns the average of those squared absolute value difference between each member pair.

Examples \
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3 \
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16)  / 4 \
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2 \

p solution([1, 2, 3], [4, 5, 6]) == 9 \
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5 \
p solution([-1, 0], [0, -1]) == 1

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
```

---

## Exponent Method ##

- Difficulty: **medium**
- [ ] Problem Completed?

Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:

p power(2, 3) == 8 \
p power(10, 0) == 1 \
p power(-5, 3) == -125 \
p power(-4, 2) == 16 \
p power(10, 0) == 1 \
p power(2, 3) == 8 \
p power(3, 2) == 9 \
p power(-5, 3) == -125 \
p power(-4, 2) == 16 \
p power(8, -2) == nil

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
```

---

## Where my Anagrams At ##

- Difficulty: **medium**
- [ ] Problem Completed?

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa'] \
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer'] \
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

```

---

## Determine Missing Letters ##

- Difficulty: **medium**
- [ ] Problem Completed?

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p determine_missing_letter(['a','b','c','d','f']) == 'e' 
p determine_missing_letter(['O','Q','R','S']) == 'P'
p determine_missing_letter(["a","b","c","d","f"]) == "e"
p determine_missing_letter(["O","Q","R","S"]) == "P"
```

---

## Find Primes ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]
```

---

## Find Some Substrings ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given two arrays of strings a1 and a2 return a sorted array r in alphabetical order of the strings of a1 which are substrings of strings of a2.

substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"] \
substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == [] \
substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"] \
substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []
```

---

## Next Bigger Number ##

- Difficulty: **hard**
- [ ] Problem Completed?

You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21 \
513 ==> 531 \
2017 ==> 2071 \
If no bigger number can be composed using those digits, return -1: \
9 ==> -1 \
111 ==> -1 \
531 ==> -1

p next_bigger_num(9) == -1 \
p next_bigger_num(12) == 21 \
p next_bigger_num(513) == 531 \
p next_bigger_num(2017) == 2071 \
p next_bigger_num(111) == -1 \
p next_bigger_num(531) == -1 \
p next_bigger_num(123456789) == 123456798

```ruby

### SOLUTION TAKEN FROM CODEWARS

def next_bigger(value)

  # This brute force method works nicely for numbers with < 6 digits ...
  # 
  #  sorted_permutations =
  #    value.to_s
  #         .chars
  #         .map(&:to_i)
  #         .permutation.map{|a| a.join.to_i}
  #         .uniq
  #         .sort
  #         
  #  sorted_permutations[sorted_permutations.index(value) + 1] || -1

  # But with larger numbers its time complexity is clearly not suited.
  # So, I used this algorithm:
  # https://www.quora.com/How-do-I-write-a-code-to-find-the-next-highest-number-formed-by-the-digits-of-a-given-number

  
  # Convert the number into an array of digits and reverse it for easier iterating
  a = value.to_s.chars.map(&:to_i).reverse
   
  # The approach is to start with the tens digit, and iterate up, searching the digits
  # to the left of the current digit, for one that has a greater value than the current digit.
  # If found, then the current digit will be swapped with the digit found among those to the left,
  # that is the lowest value, but greater than the current digit. The leftmost such digit will be
  # swapped if its value is duplicated in the group. 
  1.upto(a.size - 1) do |i|
    left_digits = a.take(i)    
    swap_digit_index = find_min_value_greater_than left_digits, a[i]
    
    if swap_digit_index
          
      # Now swap the digits in the array
      a[swap_digit_index], a[i] = a[i], a[swap_digit_index]
      
      # Now arrange all of the digits on the left into descending order
      left_digits = a.shift(i).sort.reverse
     
      # Now reverse the entire array, and return it as an integer
      return (left_digits + a).reverse.map(&:to_s).join.to_i
    end
  end
  
  # Couldn't find a bigger number
  -1
end

# Searches through an array of integers, and
#  returns the index of the first minimum value that is also 
#  greater than the specified value.
# @param [Array<Integer>] values
# @param [Integer] subject the value
# @return [Integer,nil] returns the index of the element
#  that meets the above conditions or nil if none found.
def find_min_value_greater_than(array, value)
  return nil unless array.any? { |v| v > value }
  index = nil
  array.each_with_index do |v, i|
    if v > value
      index = index.nil? ? i : (v < array[index] ? i : index)
    end
  end
  index
end
```

---

## Split Strings ##

- Difficulty: **medium**
- [ ] Problem Completed?

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

p solution('abc') == ['ab', 'c_'] \
p solution('abcdef') == ['ab', 'cd', 'ef'] \
p solution("abcdef") == ["ab", "cd", "ef"] \
p solution("abcdefg") == ["ab", "cd", "ef", "g_"] \
p solution("") == []

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
```

---

## Record Temps ##

- Difficulty: **medium**
- [ ] Problem Completed?

You are given two arrays that each contain data that represents the min and max weather temperatures for each day of the week.

The first array, the records array, contains the all-time record low/high temperatures for that day of the week.
e.g. [[record low, record high], ...]

The second array, the current week array contains the daily low/high temperatures for each day of the current week.
e.g. [[daily low, daily high], ...]

A daily high temperature is considered a new record high if it is higher than the record high for that day of the week. A daily low temperature is considered a new record low if it is lower than the record low for that day of the week.

Compare the daily low/high temperatures of the current week to the record lows/highs and return an array with the updated record temperatures.

There may be multiple record temperatures in a week.
If there are no broken records return the original records array.

```ruby
                sun        mon      tues       wed      thur      fri       sat
record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]],
             [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]])
➞            [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
```

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]], [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]]) == [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
```

---

## Anagram Difference ##

- Difficulty: **hard**
- [ ] Problem Completed?

Given two words, how many letters do you have to remove from them to make them anagrams?

Example
First word : c od e w ar s (4 letters removed) \
Second word : ha c k er r a nk (6 letters removed) \
Result : 10 \
Hints \
A word is an anagram of another word if they have the same letters (usually in a different order). \
Do not worry about case. All inputs will be lowercase.

p anagram_difference('', '') == 0 \
p anagram_difference('a', '') == 1 \
p anagram_difference('', 'a') == 1 \
p anagram_difference('ab', 'a') == 1 \
p anagram_difference('ab', 'ba') == 0 \
p anagram_difference('ab', 'cd') == 4 \
p anagram_difference('aab', 'a') == 2 \
p anagram_difference('a', 'aab') == 2 \
p anagram_difference('codewars', 'hackerrank') == 10

---

## Highest Scoring Word ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

p high('man i need a taxi up to ubud') == 'taxi' \
p high('what time are we climbing up the volcano') == 'volcano' \
p high('take me to semynak') == 'semynak' \
p high('aaa b') == 'aaa'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

# p get_score('man')
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
```

---

## Replace with ALphabet Position ##

- Difficulty: **medium**
- [ ] Problem Completed?

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.") \
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" \
p alphabet_position("-.-'") == ""

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
```

---

## Sherlock on Pockets ##

- Difficulty: **medium**
- [] Problem Completed?

Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

pockets = { \
  bob: [1], \
  tom: [2, 5], \
  jane: [7] \
}

Write a method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

p find_suspects(pockets, [1, 2]) == [:tom, :jane] \
p find_suspects(pockets, [1, 7, 5, 2]) == nil \
p find_suspects(pockets, []) == [:bob, :tom, :jane] \
p find_suspects(pockets, [7]) == [:bob, :tom]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 
pockets2 = {:meg=>[3], :tom=>[5]}
    
p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
p find_suspects(pockets2, []) == [:meg, :tom]
```

---

## Capitalize Second of Third ##

- Difficulty: **medium**
- [ ] Problem Completed?

Capitalize every second character of every third word of a given string.

p to_weird_case("Lorem Ipsum is simply dummy text of the printing") == "Lorem Ipsum iS simply dummy tExT of the pRiNtInG" \
p to_weird_case("It is a long established fact that a reader will be distracted") == "It is a long established fAcT that a rEaDeR will be dIsTrAcTeD" \
p to_weird_case("aaA bB c") == "aaA bB c" \
p to_weird_case("Miss Mary Poppins word is supercalifragilisticexpialidocious") == "Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p to_weird_case("Lorem Ipsum is simply dummy text of the printing") == "Lorem Ipsum iS simply dummy tExT of the pRiNtInG"
p to_weird_case("It is a long established fact that a reader will be distracted") == "It is a long established fAcT that a rEaDeR will be dIsTrAcTeD"
p to_weird_case("aaA bB c") == "aaA bB c"
p to_weird_case("Miss Mary Poppins word is supercalifragilisticexpialidocious") == "Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
```

---

## Difference of Two ##

- Difficulty: **medium**
- [ ] Problem Completed?

The objective is to return all pairs of integers from a given array of integers
that have a difference of 2. The result array should be sorted in ascending order of values. Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

difference_of_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
difference_of_two([2, 4]) == [[2, 4]]
difference_of_two([1, 4, 7, 10, 13]) == []
```

---

## Vowel Back ##

- Difficulty: **medium**
- [ ] Problem Completed?

You need to play around with the provided string (s). \
Move consonants forward 9 places through the alphabet. If they pass ‘z’, start
again at ‘a’. Move vowels back 5 places through the alphabet. If they pass ‘a’,
start again at ‘z’.  Provided string will always be lower case, won’t be empty
and will have no special characters.

p vowel_back("testcase") == "czbclvbz" \
p vowel_back("codewars") == "ljmzfvab" \
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz" \
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu" \
p vowel_back("bringonthebootcamp") == "kadwpjwcqzkjjclvvy" \
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p vowel_back("testcase") == "czbclvbz"
p vowel_back("codewars") == "ljmzfvab" 
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz"
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu"
p vowel_back("bringonthebootcamp") == "kadwpjwcqzkjjclvvy"
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"

```

---

## Find Missing Letter ##

- Difficulty: **medium**
- [ ] Problem Completed?

Find the missing letter: Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array. You will always get an valid
array. And it will be always exactly one letter be missing. The length of the array will always be at least 2. The array will always contain letters in only  one case. Use the English alphabet with 26 letters.

find_missing_letter(["a","b","c","d","f"]) == "e" \
find_missing_letter(["O","Q","R","S"]) == "P" \
find_missing_letter(["b","d"]) == "c" \
find_missing_letter(["a","b","d"]) == "c" \
find_missing_letter(["b","d","e"]) == "c"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
```

---

## Word Scramble ##

- Difficulty: **medium**
- [ ] Problem Completed?

Complete the function `scramble(str1, str2)` that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false. Notes: Only lower case letters will be used (a-z). No punctuation or digits will be included.

scramble('fnollfkjchgjgedghmc', 'cwyydgtuidth') == false \
scramble('hi', 'ih') == true \
scramble('i', 'hi') == false \
scramble('rkqodlw', 'world') == true \
scramble('cedewaraaossoqqyt', 'codewars') == true \
scramble('rkqodlw','world') == true \
scramble('cedewaraaossoqqyt','codewars') == true \
scramble('katas','steak') == false \
scramble('scriptjava','javascript') == true \
scramble('scriptingjava','javascript') == true

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end


p scramble('fnollfkjchgjgedghmc', 'cwyydgtuidth') == false
p scramble('hi', 'ih') == true
p scramble('i', 'hi') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
p scramble('laifnalg','faaaalling') == false
```

---

## Alphabetized ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a string, concatenate into a new string with case-insensitive alphabetical
order of appeareance. Whitespace and punctuation shall be removed.

alphabetized("The Holy Bible") == "BbeehHilloTy"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
```

---

## Anagram Detection ##

- Difficulty: **easy**
- [ ] Problem Completed?

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

p is_anagram('Creative', 'Reactive') == true \
p is_anagram("foefet", "toffee") == true \
p is_anagram("Buckethead", "DeathCubeK") == true \
p is_anagram("Twoo", "WooT") == true \
p is_anagram("dumble", "bumble") == false \
p is_anagram("ound", "round") == false \
p is_anagram("apple", "pale") == false

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
```

---

## Highest Scoring Word Again ##

- Difficulty: **easy**
- [ ] Problem Completed?

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs wabideill be valid.

p high('man i need a taxi up to ubud') == 'taxi' \
p high('what time are we climbing up the volcano') == 'volcano' \
p high('take me to semynak') == 'semynak' \
p high('aaa b') == 'aaa'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

# p find_value('a') == 1
# p find_value('c') == 3
# p find_value('f') == 6

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the valcono volcano') == 'valcono'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
```

---

## Rotate Matrix ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a matrix represented as a list of string, such as

```ruby
###.....
..###...
....###.
.....###
.....###
....###.
..###...
###.....
```

write a function `rotateClockwise(matrix)` that return its 90° clockwise rotation, for our example:

```ruby
#......#
#......#
##....##
.#....#.
.##..##.
..####..
..####..
...##...
```

rotateClockwise(["abc", "def"])) #, ["da", "eb", "fc"]); \
rotateClockwise(["c","b","a"])) #, ["abc"]); \
rotateClockwise(["cba"])) # ["c","b","a"]); \
rotateClockwise(["a", "b", "c"])) #, ["cba"]);

```ruby

=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p rotate_clockwise(["abc", "def"]) == ["da", "eb", "fc"]
p rotate_clockwise(["c","b","a"]) == ["abc"]
p rotate_clockwise(["cba"]) == ["c","b","a"]
p rotate_clockwise(["a", "b", "c"]) == ["cba"]
p rotate_clockwise(['###.....', '..###...', '....###.', '.....###', '.....###', '....###.', '..###...', '###.....']) == ['#......#', '#......#', '##....##', '.#....#.', '.##..##.', '..####..', '..####..', '...##...']
```

---

## Longest Common Prefix ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

puts common_prefix(["flower", "flow", "flight"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
  
p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
```

---

## Consecutive Runs ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a certain string, create a hash with each character in string as key andall possible substrings in string starting at each character as value.

p consecutive_runs('abcd') == {"a"=>["a", "ab", "abc", "abcd"], /
                               "b"=>["b", "bc", "bcd"], /
                               "c"=>["c", "cd"], /
                               "d"=>["d"]}

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p consecutive_runs('abcd') == {"a"=>["a", "ab", "abc", "abcd"], 
                               "b"=>["b", "bc", "bcd"], 
                               "c"=>["c", "cd"], 
                               "d"=>["d"]}
```

---

## Search Query ##

- Difficulty: **medium**
- [ ] Problem Completed?

Solve utilizing the given examples;

PRODUCTS = [\
  { name: "Thinkpad x210", price: 220},\
  { name: "Thinkpad x220", price: 250},\
  { name: "Thinkpad x250", price: 979},\
  { name: "Thinkpad x230", price: 300},\
  { name: "Thinkpad x230", price: 330},\
  { name: "Thinkpad x230", price: 350},\
  { name: "Thinkpad x240", price: 700},\
  { name: "Macbook Leopard", price: 300},\
  { name: "Macbook Air", price: 700},\
  { name: "Macbook Pro", price: 600},\
  { name: "Macbook", price: 1449},\
  { name: "Dell Latitude", price: 200},\
  { name: "Dell Latitude", price: 650},\
  { name: "Dell Inspiron", price: 300},\
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

p search(query) == [ { name: "Thinkpad x220", price: 250} ] \
p search(query2) == [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price: 450} ]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p search(query) == [ { name: "Thinkpad x220", price: 250} ]
p search(query2) == [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price: 450} ]
```

---

## Repeated Substring 2 ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

- Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice.

- Example 2:
  - Input: "aba"
  - Output: False

p repeated_substring('abab') == true\
p repeated_substring('aba') == false\
p repeated_substring('aabaaba') == false\
p repeated_substring('abaababaab') == true\
p repeated_substring('abcabcabcabc') == true\
p repeated_substring('aaaaa') == true

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true
```

---

## Reverse String ##

- Difficulty: **easy**
- [ ] Problem Completed?

Problem 1: Reverse a string without using the built-in #reverse method

take a string as an argument, return the string in reverse order without using the built-in reverse method.

reverse_string("abcde") == "edcba"\
reverse_string(" ") == " "\
reverse_string("football") == "llabtoof"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"
```

---

## Fizzbuzz ##

- Difficulty: **easy**
- [ ] Problem Completed?

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

fizzbuzz(1, 10)\
fizzbuzz(1, 15)

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

fizzbuzz(1, 10)
fizzbuzz(1, 15)
```

---

## Remove Vowels ##

- Difficulty: **easy**
- [] Problem Completed?

Problem 1: remove vowels from an array of strings

Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.

p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
```

---

## Delete Digit ##

- Difficulty: **easy**
- [ ] Problem Completed?

Task: Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output\
[input] integer n

Constraints: 10 ≤ n ≤ 1,000,000.

[output] an integer

p delete_digit(152) == 52\
p delete_digit(1001) == 101\
p delete_digit(10) == 1

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
```

---

## Multiples of 3 or 5 ##

- Difficulty: **easy**
- [ ] Problem Completed?

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

p solution(10) == 23\
p solution(20) == 78\
p solution(200) == 9168

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
```

---

## String Transformer ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.

Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"

You may assume the input only contain English alphabet and spaces.

string_transformer('Example string') == 'STRING eXAMPLE'\
string_transformer("Example Input") == "iNPUT eXAMPLE"

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

def swap_case(char)
  char.upcase == char ? char.downcase : char.upcase
end

def string_transformer(str)
  words = str.split(/ /).reverse
  swapped = words.map do |word|
    word.chars.map { |char| swap_case(char) }.join
  end.join(' ')
  
  str[-1] == ' ' ? swapped = ' '  + swapped : swapped
end

# p swap_case('A') == 'a'
# p swap_case('b') == 'B'

p string_transformer('Example string') == 'STRING eXAMPLE'
p string_transformer("Example Input") == "iNPUT eXAMPLE"
p string_transformer("Rsl Zqlv") == "zQLV rSL"
p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"
p string_transformer(" A b C d E f G ") == " g F e D c B a "
```

---

## Largest Product in a Series ##

- Difficulty: **hard**
- [ ] Problem Completed?

Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
```

---

## Duplicate Encoder ##

- Difficulty: **hard**
- [ ] Problem Completed?

The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples\
"din"      =>  "((("\
"recede"   =>  "()()()"\
"Success"  =>  ")())())"\
"(( @"     =>  "))(("

p duplicate_encode("din") == "((("\
p duplicate_encode("recede") == "()()()"\
p duplicate_encode("Success") == ")())())"\
p duplicate_encode("(( @") == "))(("

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
```

---

## Backspaces in String ##

- Difficulty: **medium**
- [ ] Problem Completed?

Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
```

---

## Alphabetized Again ##

- Difficulty: **medium**
- [ ] Problem Completed?

Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance".\
Whitespace and punctuation shall simply be removed.\
The input string can contain any characters except for numbers.

def alphabetized(str)
  alpha = ('a'..'z').to_a
  letters = str.chars.select { |char| alpha.include?(char.downcase) }
  letters.sort { |a, b| a.downcase <=> b.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("codeWars Can't Load Today") == "aaaacCdddeLnooorstTWy"

```ruby
def alphabetized(str)
  alpha = ('a'..'z').to_a
  letters = str.chars.select { |char| alpha.include?(char.downcase) }
  letters.sort { |a, b| a.downcase <=> b.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("codeWars Can't Load Today") == "aaaacCdddeLnooorstTWy"
```

---

## Transform to Prime ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number .

Notes

- List size is at least 2 .

- List's numbers will only have positives (n > 0) .

- Repetition of numbers in the list could occur .

- The newer list's sum should equal the closest prime number .

- Input >> Output Examples

1. minimum_number([3,1,2]) ==> return (1)\
Explanation:\
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .

2. minimum_number([2,12,8,4,6]) ==> return (b, 5)
Explanation:\
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .

3. minimum_number ([50,39,49,6,17,28]) ==> return (2)
Explanation:\
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

p minimum_number([3,1,2]) == 1\
p minimum_number([5,2]) == 0\
p minimum_number([1,1,1]) == 0\
p minimum_number([2,12,8,4,6]) == 5\
p minimum_number([50,39,49,6,17,28]) == 2

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
```

---

## Word to Digit ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a string that contains the written versions of the numbers 0-9, return the same string that has converted each writtten number within the string to an integer.

a = 'One Two Three'
convert_word_to_number(a) == '1 2 3'
a == '1 2 3'

b = 'one Two three'
convert_word_to_number(b) == '1 2 3'
b == '1 2 3'

convert_word_to_number('One Two Three and some words') == '1 2 3 and some words'
convert_word_to_number('Nine eight seven and some words') == '9 8 7 and some words'

convert_word_to_number('one word') == '1 word'
convert_word_to_number('lone word') == 'lone word'

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

a = 'One Two Three'
convert_word_to_number(a) == '1 2 3'
a == '1 2 3'

b = 'one Two three'
convert_word_to_number(b) == '1 2 3'
b == '1 2 3'

convert_word_to_number('One Two Three and some words') == '1 2 3 and some words'
convert_word_to_number('Nine eight seven and some words') == '9 8 7 and some words'

convert_word_to_number('one word') == '1 word'
p convert_word_to_number('lone word') == 'lone word'
```

---

## Longest AE ##

- Difficulty: **medium**
- [ ] Problem Completed?

Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

As an example, if the input was “aaee”, the substring (aaee) length would be 4.
For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

p longest_ae("aaee") == 4\
p longest_ae("babanctekeaa") == 10\
p longest_ae("xenoglossophobia") == -1\
p longest_ae("pteromerhanophobia") == 18\
p longest_ae("johannisberger") == -1\
p longest_ae("secaundogenituareabb") == 16

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

def find_subs(str)
  subs = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length) { |sub_arr| subs << sub_arr.join }
  end
  subs
end

def longest_ae(str)
  subs = find_subs(str)
  two_ae = subs.select { |sub_str| sub_str.count('a') == 2 && sub_str.count('e') == 2 }
  two_ae.empty? ? -1 : two_ae.max_by { |str| str.length }.size
end

# p find_subs("babanctekeaa")

p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16
```

---

## Minimum Sub Length ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

p minSubLength([2,3,1,2,4,3], 7) == 2\
p minSubLength([1, 10, 5, 2, 7], 9) == 1\
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4\
p minSubLength([1, 2, 4], 8) == 0

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end
def find_subs(arr)
  subs = []
  1.upto(arr.size) do |length|
    arr.each_cons(length) { |sub_arr| subs << sub_arr }
  end
  subs
end

def min_sub_length(arr, s)
  subs = find_subs(arr)
  greater_subs = subs.select { |sub_arr| sub_arr.sum >= s }
  return 0 if greater_subs.empty?
  greater_subs.min_by { |sub_arr| sub_arr.length }.size
end

# p find_subs([2,3,1,2,4,3]) 

p min_sub_length([2,3,1,2,4,3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0
```

---

## Two Sum ##

- Difficulty: **medium**
- [ ] Problem Completed?

Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

p two_sum([1, 2, 3], 4).sort == [0, 2]\
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]\
p two_sum([2, 2, 3], 4).sort == [0, 1]

```ruby
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p two_sum([1, 2, 3], 4).sort == [0, 2]
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
p two_sum([2, 2, 3], 4).sort == [0, 1]
```

---

## Digital Root ##

- Difficulty: **medium**
- [ ] Problem Completed?

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)\
=> 1 + 6\
=> 7

digital_root(942)\
=> 9 + 4 + 2\
=> 15 ...\
=> 1 + 5\
=> 6

digital_root(132189)\
=> 1 + 3 + 2 + 1 + 8 + 9\
=> 24 ...\
=> 2 + 4\
=> 6

digital_root(493193)\
=> 4 + 9 + 3 + 1 + 9 + 3\
=> 29 ...\
=> 2 + 9\
=> 11 ...\
=> 1 + 1\
=> 2

p digital_root(16) == 7\
p digital_root(456) == 6\
p digital_root(132189) == 6\
p digital_root(493193) == 2

```ruby
=begin
=begin
Problem
------------------------------------------


Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------


=end

p digital_root(16) == 7 
p digital_root(456) == 6 
p digital_root(132189) == 6
p digital_root(493193) == 2
```
