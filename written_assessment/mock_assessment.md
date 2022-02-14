# RB101-109 Mock Assessment

## Question 1

```ruby
a = 10

while true do
  a = 5
  break
end

puts a
```

## Question 2

``` ruby
def some_method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method
```

## Question 3

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

## Question 4

```ruby
def amethod(param)
  param += " universe"
  param << " world"
end

str = "hello"
amethod(str)

p(str)
```


# Question 5

```ruby
def test(str)
  str += '?'
  str.downcase!
end

test_str = "Written Assessment"
test(test_str)

puts test_str
```

## Question 6

```ruby
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
```

## Question 7

```ruby
animal = `dog`

loop do |animal|
  animal = "cat"
  break
end

puts animal
```


## Question 8

```ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var
```


## Question 9

```ruby
MY_TEAM = "Los Angeles Clippers"

loop do
  MY_TEAM = "Phoenix Suns"
  break
end

while true
  MY_TEAM = "Los Angeles Lakers"
  break
end

def best_team
  MY_TEAM = "Utah Jazz"
end

puts MY_TEAM
```


## Question 10

```ruby
array = [1,2,3,4,5,6,7,8,9,10]

odds = array.select do |n|
         n+1
       end 

p  odds

incremented = array.map do |n|
                n.odd?
              end 

p incremented

incremented = array.map do |n|
                n.odd?
                puts n 
              end 

p incremented
```


## Question 11

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

```

## Question 12

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```


## Question 13

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```


## Question 14

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```


## Question 15

```ruby
array = \[1, 2, 3]

array.each do |element|
  a = element
end

puts a
```


## Question 16


```ruby
a = 7
array = \[1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```


## Question 17

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

## Question 18

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```


## Question 19

```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```


## Question 20

```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
```



## Question 21

```ruby
[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end
```

