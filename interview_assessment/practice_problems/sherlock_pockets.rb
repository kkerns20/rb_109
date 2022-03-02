=begin
Problem
------------------------------------------
Given a hash with names as key and what's in their pockets as value

Inputs: 1 hash and 1 array
Outputs: 1 array of keys of pockets, or nil

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

find_suspects(pockets, [1, 2]) # => [:tom, :jane]
tom has something not allowed -> 5
jane has -> 7

Data Structure, Algorithm
------------------------------------------

- Initialize an empty array to hold the results
- Iterate over the pocket hash
  - If the current person is a suspect, append them to the results
- Return the results array, unless it is empty, in which case return nil
- Is the current person a suspect?
  - Iterate over the current pocket array
    - Return true if the current value is not included in the allowed values array
- Return false
=end


def suspect?(pocket_contents, allowed_items)
  return false if pocket_contents == nil
  pocket_contents.each do |item|
    return true unless allowed_items.include?(item)
  end
  
  false
end

def find_suspects(pockets, allowed_items)
  return nil unless pockets
  return nil if pockets.values.all? { |pocket| pocket == nil || pocket == []}
  
  suspects = []
  
  pockets.each do |person, items|
    suspects << person if suspect?(items, allowed_items)
  end
  
  return nil if suspects.empty?
  
  suspects
end

def find_suspects(pockets, allowed_items)
  suspects = []
  pockets.each do |person, items|
    suspects << person unless (Array(items) - allowed_items).empty?
  end
  suspects.empty? ? nil : suspects
end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
