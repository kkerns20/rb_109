=begin
Problem
------------------------------------------
Write a method to find the longest common prefix string amongst and array of strings.
If no common prefix, return empty string

Inputs: 
Outputs: 

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
['flower', 'flow', 'flight']
'f' is in all three
arr[0][0] is in all three at arr[1][0] and arr[2][0]
push arr[0][0] to output
  [i][j]
  i is 0 to arr size - 1
  j is 0 to arr.[0]size
'fl' is in all three
append to output[0]
arr[0][0..1] is 
'flo' is not in one so fl stays

Data Structure, Algorithm
------------------------------------------
initialize output to empty str
iterate through the first word
  - if all start with the output
    - add to output
return output


=end

def common_prefix(arr)
  output = ""
  arr[0].chars.each do |char|
    if arr.all? {|word| word.start_with?(output + char)}
      output += char
    end
  end
  output
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog','racecar', 'car']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
