# Written Prep Assessment

### Question 1

What is output when we execute the following code?
```ruby
def a_method
  puts message
end

message = "hello there!"

puts message
a_method
```

## Global Scope

### Question 2

What is output when we execute the following code?
How does it differ from the example above?

```ruby
MESSAGE = "hello there!"

def a_method
  puts message
end

puts MESSAGE
a_method
```

## Local Scope

### Question 3 

What is output when we execute the following code? Explain how and why

```ruby
def a_method(message)
  puts message
end

message = "hello there!"

puts message
a_method(message)
```

## Inner and Outer Scope

### Question 4

What is output when we execute the following code? Explain why

```ruby
x = "blue"

4.times do
  x = "yellow"
  y = "purple"
end

puts x
puts y
```


What constitutes a block? / Inner Scope

### Question 5

What is output by the following code? Why?

```ruby
i = 0
while i < 1 do
  a = "abcdefg"
  i += 1
end

loop do
  b = "abcdefg"
  break
end

puts a
puts b
```

### Question 6

What is output by the following code? Why?

```ruby
2.times do
  a = "pizza"
  b = "spaghetti"
end

2.times do
  a = "pizza"
  puts a
  puts b
end
```

### Question 7

if student does well, paste the following and ask what the object_id calls will output

```ruby
2.times do
  a = 'pizza'
  b = 'spaghetti'
  puts a.object_id
end

2.times do
  a = 'pizza'
  puts a.object_id
end
```
=> ?
=> ?


# Question 8

What does the following code output? Why?

```ruby
a = 'hamburger'

1.times do
  b = 'french fries'

  1.times do
    c = 'milkshake'

    puts a
    puts b
    puts c
  end

  puts a
  puts b
  puts c
end

puts a
puts b
puts c
```

### Question 9

What does the following code output? Why?

```ruby
a = 'poem'

%w(to be or not to be).each do |a|
  a = 'sonnet'
end

puts a
```


### Question 10

What does the following code output? Why?

```ruby
a = 'string'

[1, 2, 3, 4, 5].each do |a|
  puts a
end

puts a
```

### Question 11

What does the following code output? Why?

```ruby
a = 'some words'

def change_string(str)
  str = 'other words'
end

change_string(a)
puts a
```


## Blocks within a method

### Question 12

What does the following code output? Why?

```ruby
def a_method
  a = 'hamburger'

  1.times do
    a = 'actually, just salad please'
    b = 'but a side of fries as well'

    puts a
    puts b
  end

  puts a
  puts b
end

puts a
puts b
```

### Question 13

What is output by the following code? Why?
```ruby
a = 'string'
b = a.upcase
puts a == b
puts a.object_id == b.object_id

a = 'string'
b = a.upcase!

puts a == b
puts a.object_id == b.object_id
```


### Question 14 

What is output by the following code? Why?
```ruby
def make_uppercase(string)
  string = string.upcase
end

a = 'string'

puts make_uppercase(a)
puts a
```

### Question 15

# What is output by the following code? Why?

```ruby
def pluralize(string)
  string += 's'
  string
end

a = 'string'
pluralize(a)

puts a
```

### Question 16

What is output by the following code? Why?

```ruby
def proper_noun(string)
  string = string.capitalize!
  string
end

name = 'jane doe'
puts proper_noun(name)
puts name
```

### Question 17

What is output by the following code? Why?

```ruby
def proper_noun(string)
  string[0] = string[0].capitalize
end

name = 'jane'
proper_noun(name)
puts name
```


### Question 17

What is output by the following code? Why?

```ruby
def adds_one_to(array)
  array[0] += 1
  array
end

zeros = [0, 0, 0]
p adds_one_to(zeros)
p zeros
```


### Question 18

What is output by the following code? Why?
```ruby
def add_one_to(nums)
  0.upto(nums.length) do |i|
    nums[i] += 1
  end

  nums
end

numbers = [0, 1, 2, 3, 4]

p add_one_to(numbers)
p numbers
```

### Question 19

What is output by the following code? Why?
```ruby
array = ['a', 'b', 'c', 'd', 'e']

array.each do |letter|
  letter.upcase!
end

p array
```

### Question 20

What is output by the following code? Why?
```ruby
def adds_an_s(word)
  word << 's'
  word
end

noun = 'cat'
adds_an_s(noun)
puts noun
```

### Question 21

What is output by the following code? Why?
```ruby
def make_a_sentence(string)
  string = string.capitalize
  string += ' how are you'
  string << '?'
end

word = 'hello'
p make_a_sentence(word)
p word
```


### Question 22

What is output by the following code? Why?
```ruby
def make_uppercase(string)
  string.upcase!
end

a = 'hello'
puts a
puts make_uppercase(a)
puts a
```


## Pass by Value

### Question 23

What is output by the following code? Why?
```ruby
def add_emphasis(string)
  string += '!'
end

a = 'hello'
puts a
puts add_emphasis(a)
puts a
```

## Collections

- Element Reference
- String Element Reference

```ruby
s = 'Hello World'
puts s[0]
puts s[2]
puts s[-1]
puts s[2, 3]
puts s[2, 3][2]
```

## Array Element Reference

```ruby
arr = %w(a b c d e f g)
arr[0]          
arr[1]          
arr [-1]        
arr[2, 3]      
arr[2, 3][2]
arr = %w(a b c d e f g)
arr.slice(3, 1)
arr.slice(3..3)
arr.slice(3)
```

## Hash Element Reference

```ruby
hash = { one: 1, two: 2, three: 3 }
hash[:one]
hash[:two]

hsh = { 1 => 'one', 2 => 'two' }
hash[2][2]
```

## Out of Bounds Indices

```ruby
string = 'Hello'
string[5]
string[-6]
arr = ['one', :two, 3, nil]
arr[4]
arr[3]

arr.fetch(3)
arr.fetch(4)
```

## Invalid Hash Keys

```ruby
hsh = {one: 'son', two: 'shoe', infinity: nil }
hsh[:one]
hsh[:three]
hsh[:infinity]

hsh.fetch(:infinity)
hsh.fetch(:three)
```

## Comparison

- The Comparison Operator

```ruby
2 <=> 1
1 <=> 2
2 <=> 2

'b' <=> 'a'
'a' <=> 'b'
'a' <=> 'a'

1 <=> 'a'
```


## Sorting

### Sorting Strings

```ruby
'a' <=> 'b'
'apple' <=> 'ape'
'cat' <=> 'catty'

words = %w(card soap knife crab soapy coin sand king kill)
words.sort
```

### Sorting Arrays

```ruby
[[2, 4], [2, 1, 4], [0, 1, 2], [3, 2, 0], [0, 1], [3, 2, 5]].sort
```

## Shallow Copy

### Mutating an element in a collection copy

```ruby
arr_a = %w(ant bat cat)
arr_b  arr_a.dup

arr_b[1].upcase!
p arr_a
p arr_b
```

### Mutating a collection copy as a whole

```ruby
arr_a = %w(ant bat cat)
arr_b = arr_a.dup

arr_b.map! { |word| word.upcase }

p arr_a
p arr_b
```

### Mutating each element within a collection copy

```ruby
arr_a = %w(ant bat cat)
arr_b = arr_a.dup

arr_b.map! { |word| word.upcase! }

p arr_a
p arr_b
```

### Question 24

What does the following code output? What does it return? When is a good time to use the each method?

```ruby
names = ["george", "bobbi", "joel", "susan"]
names.each do |name|
  puts name.capitalize
end
```

### Question 25

What if we call the destructive capitalize! method here?
What does the following code output? What does it return? When is a good time to use the each method?

```ruby
names = ["george", "bobbi", "joel", "susan"]
names = names.each do |name|
          name.capitalize
        end
```

