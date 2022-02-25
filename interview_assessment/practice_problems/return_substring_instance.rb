=begin
Problem
------------------------------------------
Return the number of time the search_text appears in hte full_text

Inputs: string
Outputs: integer

Rules/Requirements
- only an exact match will be counted

Clarifying Questions


Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
Create variable count set to the count of the search text in full text
  - if count is equal to search text size
    - return count / search text size
  - if count is greater than search text size and count % search text size == 0
    - return count / search text size

=end

# def solution(full_text, search_text)
#   count = full_text.count(search_text)
#   if count == search_text.size
#     count = count / search_text.size
#   elsif count > search_text.size && count % search_text.size == 0
#     count = count / search_text.size
#   end
#   count
# end

def solution(full_text, search_text)
  full_text.scan(search_text).size
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('aa_bb_cc_dd_bb_e', 'bb') == 2
p solution('aaabbbcccc', 'bbb') == 1
