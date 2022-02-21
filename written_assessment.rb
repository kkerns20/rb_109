# .. lots of code up here omitted

require 'pry'

def repeat(str)
  str * 2
  binding.pry
end

word = "hey"
repeat(word)

puts word