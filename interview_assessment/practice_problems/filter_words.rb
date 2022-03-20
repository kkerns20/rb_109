=begin
Problem
------------------------------------------
Wrtie a function that takes a sting and an integer and returns a list of words that are longer than the integer

Inputs: 1 string, 1 integer 
Outputs: 1 array of strings

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
create an output array
- split thring into words
- iterate through those words
  - word length greater than 4?
    - push to output array
- end loop
- return array

=end

def filter_long_words(str, n)
  str.split.each_with_object([]) do |x, arr| 
    if x.length > n
      arr << x
    end
  end
end

def filter_long_words(sentence, n)
  sentence.split.select { |wd| wd.size > n }
end

p filter_long_words("The quick brown fox jumps over the lazy dog", 4) #== ['quick', 'brown', 'jumps']
