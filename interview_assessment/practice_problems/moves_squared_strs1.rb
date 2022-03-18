=begin
Problem
------------------------------------------
Write a vertical mirror and a horizontal mirror


Inputs: 1 method, 1 string
Outputs: 1 string

Rules/Requirements
- case insensitive
- vert mirror is a reverse of all string delimited by '/'
- hor mirro is reverse of order of order of the strings

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
s = "abcd\nefgh\nijkl\nmnop"
oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"
Vert - 
split based on \
first string is always without a n to start, and all others have the n to start
- so reverse teh first and reverse the elements in the string from the index 1 to -1 on the rest
- join back with \

Hor - 
split based on \ and reverse
set an array to push to 
iterate through the split with transformation


Data Structure, Algorithm
------------------------------------------
ALPHABET constant

--Vert
- iterate through string chars and if ifs \ then replace with ' '
- split string
- iterate with transformation with index
  - at index 0
    - reverse
  - else
    - reverse ind 1 .. -1
- join with '\'

-- Hor
- iterate through string chars and if ifs \ then replace with ' '
- split string
- split based on '\' and reverse
- join with '\'

-- Oper
- fct(s)


=end
ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcderghijklmnopqrstuvwxyz'

def vert_mirror(string)
  str = string.each_char {|y| y = ' ' if !ALPHABET.include?(y)}
  str.split.map {|x| x.reverse}.join("\n")
end

def hor_mirror(string)
  str = string.each_char {|y| y = ' ' if !ALPHABET.include?(y)}
  str.split.reverse.join("\n")
end

def oper(fct, s)
  fct == method(:vert_mirror)? vert_mirror(s) : hor_mirror(s)
end

def vert_mirror(strng)
  strng.split("\n").map(&:reverse).join("\n")
end
def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end
def oper(fct, s) 
  fct.call(s)
end

p vert_mirror("hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu") == "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"
p hor_mirror("abcd\nefgh\nijkl\nmnop")

