=begin
Problem
------------------------------------------
Given a two arguments, a string title and an optional string of minor words, write the title in Title Case 

Inputs: two arguments, each strings
Outputs: one string in Title Case

Rules/Requirements
- The first word is always capitalized
- If a word appears in the optional second argument and it is not the first word, it would refelct the optional argument string < -- ignore the case of the minor words


Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
('a clash of KINGS', 'a an the of') == 'A Clash of Kings'

'a' is first word, so it should be capitalized 
'clash' does not appear in optional, so it is capitalized
'of' appears in optional, so it is lowercase
'KINGS' does not appear in optional, so it should be capitalized after downcased

Data Structure, Algorithm
------------------------------------------
==> Iterate through the title string to see if it appears in optional, if it does, down case and append to result string, if it doesn't, downcase and capitalize -- alway capitalize the first word

-- method --> title_case(title, minor_words = '') --> string

Initialize minor_word to the split of minor_words
- Reassign title to return value of -->
  - Downcase title
  - Split title
  - Iterate through split title with map and with index
    - if index == 0
      - capitalize word
    - elsif word is included in minor word list
      - return word
    - else
      - capitalize
- Return joined title


=end

def title_case(title, minor_word = '')
  minor_word_arr = minor_word.downcase.split
  title = title.downcase.split.map!.with_index do |word, index|
            if index == 0
              word.capitalize
            elsif minor_word_arr.include? word
              word
            else
              word.capitalize
            end
          end
  title.join(' ')
end

def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') #== 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
