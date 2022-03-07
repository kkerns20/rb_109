=begin
Encode and Decode a Secret Message

1) Encode a secret message by advancing each letter by a specified number of positions in the alphabet.
- There are 26 letters in the English alphabet.
  - Advancing by greater than 26 positions starts over from the beginning.
    - Example: Advancing "A" by 27 => "B"
- Case insensitive: Uppercase letters stay uppercase. Same for lowercase.
- Do not modify numbers, punctuation, special characters, or spaces.

2) Write a method to decode a secret message.

Write two methods:
- encode(str, n)
- decode(str, n)

Examples
# p encode('a', 1) == 'b'
# p encode('a2z', 1) == 'b2a'
# p encode('r2d2', 5) == 'w2i2'
# p encode('2Pac ruleZ', 3) == '2Sdf uxohC'

# p decode('b', 1) == 'a'
# p decode('b2a', 1) == 'a2z'
# p decode('w2i2', 5) == 'r2d2'
# p decode('2Sdf uxohC', 3) == '2Pac ruleZ'

# p encode("Glory 2 Ukraine!", 16) == "Wbeho 2 Kahqydu!"
# p encode("Glory 2 Ukraine!", 36) == "Qvybi 2 Eubksxo!"

# p encode("99 Problems but a %*!@$ ain't one", 16) == "99 Fherbuci rkj q %*!@$ qyd'j edu"
# p encode("99 Problems but a %*!@$ ain't one", 36) == "99 Zbylvowc led k %*!@$ ksx'd yxo"


Inputs: 1 string and 1 integer
Outputs: 1 string

Rules/Requirements
- advance each alph char by the input of 'n'

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
encode
'a' advanced by '1' is 'b'
'a2z' advaned by 1 is 'b2a'

decode
'b' reteated by 1 is 'a'


Data Structure, Algorithm
------------------------------------------
==> loop through each chars, if that char is alpha, I want to grab the next alpha char n spots away.

- create an array of upcase alphas
- create an array of lowercase alphas
- create result arr to []
- loop (with transformation and tracking index) through input string chars
  - if current char is in upcase alphas
    - append the char n spaces away to result
  - if it's in lowercase alphas
    - append the char n spaces away to result
- end loop
- return result joined

Helper Method find_index
- identify index of current element
- add 'n' to that index
  - if index > 25
    - then find the char at index + n - 26
  - if index < 26
    - find char at that index
  - end conditional

=end

def encode(string, n)
  up_alpha = ('A'..'Z').to_a
  lower_alpha = ('a'..'z').to_a
  result_arr = []
  string.chars.map.with_index do |char, idx|
    if up_alpha.include?(char)
      result_arr.append(up_alpha[find_index_en(char, n)])
    elsif lower_alpha.include?(char)
      result_arr.append(lower_alpha[find_index_en(char, n)])
    else
      result_arr.append(char)
    end
  end
  result_arr.join
end
  
def find_index_en(char, n)
  up_alpha = ('A'..'Z').to_a
  until n <= 25
    n -= 26
  end
  index = up_alpha.index(char.upcase)
  if index + n > 25
    index + n - 26 
  else
    index + n
  end
end

def decode(string, n)
  up_alpha = ('A'..'Z').to_a
  lower_alpha = ('a'..'z').to_a
  result_arr = []
  string.chars.map.with_index do |char, idx|
    if up_alpha.include?(char)
      result_arr.append(up_alpha[find_index_de(char, n)])
    elsif lower_alpha.include?(char)
      result_arr.append(lower_alpha[find_index_de(char, n)])
    else
      result_arr.append(char)
    end
  end
  result_arr.join
end

def find_index_de(char, n)
  until n <= 25
    n -= 26
  end
  up_alpha = ('A'..'Z').to_a
  index = up_alpha.index(char.upcase)
  if index - n < 0
    index + 26 - n
  else
    index - n
  end
end



p encode('a', 1) == 'b'
p encode('a2z', 1) == 'b2a'
p encode('r2d2', 5) == 'w2i2'
p encode('2Pac ruleZ', 3) == '2Sdf uxohC'

p decode('b', 1) == 'a'
p decode('b2a', 1) == 'a2z'
p decode('w2i2', 5) == 'r2d2'
p decode('2Sdf uxohC', 3) == '2Pac ruleZ'

p encode("Glory 2 Ukraine!", 16) == "Wbeho 2 Kahqydu!"
p encode("Glory 2 Ukraine!", 36) == "Qvybi 2 Eubksxo!"

p encode("99 Problems but a %*!@$ ain't one", 16) == "99 Fherbuci rkj q %*!@$ qyd'j edu"
p encode("99 Problems but a %*!@$ ain't one", 36) == "99 Zbylvowc led k %*!@$ ksx'd yxo"
