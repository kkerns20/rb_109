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
('1'..'13').to_a * 13
['s', 'h', 'd', 'c']
=end

def shuffled_deck
  (['s', 'h', 'd', 'c'] * 13).zip(('1'..'13').to_a * 13).map {|x|
    x.join(' ') }.shuffle
end

def shuffled_deck
  (1..13).map { | i | "HCDS".chars.map { | j | "#{j} #{i}" } }.flatten.shuffle 
end

def shuffled_deck
  'HCDS'.chars.product((1..13).to_a).map{|a| a.join(' ')}.shuffle
end

def shuffled_deck
  arr = "HCDS".chars.flat_map{|x| (1..13).map{|y| "#{x} #{y}"}}
  arr.shuffle
end

p shuffled_deck
