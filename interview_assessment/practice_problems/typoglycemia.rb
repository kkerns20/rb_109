=begin
Problem
------------------------------------------
Create a program that 
  -keeps the first and last characters in original place
  -chars between first and last are sorted
  - punctuation remains where it is

Inputs: 1 string
Output: 1 string

Rules/Requirements
Explicit:
- words are separated b spaces
- only spaces separate words
- only four puctuation marks -, ', ,, .
- ignore capitalization'
Implicit:
- empty str returns empty String
- words 3 or less return same word

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
card-carrying', 'caac-dinrrryg'
c at index 0 stays the same 
g at index -1 stays the same
everything else, beside the hyphen are sorted

Data Structure, Algorithm
------------------------------------------
==> Split original string up, scramble the words, and join back together

--method --> scramble_words(str) --> String
- split str up and iterate through it to scramble the words, join back together

Helper Methods
-- method --> scramble(word) --> str
- initialize chars and break word into chars
- initialize letter and only select letters from the word with regex
- initialize scrambled letters and scramble the letters by sorting and turn into Array
- iterate through chars 
  - if the current char is a letter
    - shift scrambled letters
    - otherwise, add char
- join chars

-- method --> scramble_letters(word) --> word 
- return word if word lenght is less than or equal to 2
- concatenate index 0 plus everything between idx 1 to -1 to an array of characters, sort and join plus index -1

=end

def scramble_words(str)
  str.split(' ').map { |word| scramble(word) }.join(' ')
end

def scramble(word)
  chars = word.chars
  letters = chars.select do |char|
    char.match?(/[a-z]/)
  end
  scrambled_letters = scramble_letters(letters.join).chars
  chars.map do |char|
    if char.match?(/[a-z]/)
      scrambled_letters.shift
    else
      char
    end
  end
    .join
end

def scramble_letters(word)
  return word if word.length <= 2

  word[0] + word[1...-1].chars.sort.join + word[-1]
end

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
