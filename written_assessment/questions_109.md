# Practice Problems

All problems found in [RB109 Written Assessment: Practice Problems](https://docs.google.com/document/d/16XteFXEm3lFbcavrXDZs45rNEc1iBxSYC8e4pLhT0Rw/edit#)

- [Local Variable Scope](#local-variable-scope)
    - #1-8
- [Variable Shadowing](#variable-shadowing)
    - #9-11
- [Object Passing / Variables as Pointers](#object-passing-/-variables-as-pointers)
    - #12 - 23
- [Object Mutability / Mutating Methods](#object-mutability-/-mutating-methods)
    - #23-32
- [Each, Map, and Select](#each-map-and-select)
    - #33-43
- [Other Collection Methods](#other-collection-methods)
    - #44-52
- [Truthiness](#truthiness)
    - #53-54

## Local Variable Scope

### 1

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = “Hello”
b = a
a = “Goodbye”
puts a
puts b
```

The code above returns `nil` twice and outputs `"Goodbye"` and then `"Hello"`. This is example of how variables behave as pointers and are no deeply linked to each other, even when on is assigned to the other. It is also a demonstration of how reassignment creates a new object in memory that will break the binding between the variable and the object it previously referenced.

`a` is initialized and assigned the string object `"Hello"`. Then `b` is assigned to reference the same object as `a`, namely `"Hello"`. `a` is then reassigned to the string object `"Goodbye"`. This breaks the common reference between a and b. 

The puts method is called and will always return nil. Invoking the puts method and passing in the local variable `a` as an argument will output "Goodbye" and return nil. Then, Invoking the puts method and passing in the local variable `b` as its argument will output "Hello", as that is what is still referenced, and will return `nil`

### 2

**Current time:** 6:50 + revisions

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b
```

on line 1, the local variable `a` is initialized and assigned the integer 4, remembering that integers are immutable.

the `loop` method is invoked on line 3 and passed a `do..end` block as its argument. This creates an inner loop. Because `a` was initialized in the outer loop, it will be accessible within the loop block, so it is reassigned to the integer 5 on line 4. `b` is initialized on line 5 and assigned to the integer 3. A `break` statement is then used to exit the loop, which does not make use of the `loop` capabilities.

The puts method is invoked, which will output the argument given to it and always return `nil`. Calling `puts` with the argument `a` will output the reassigned value of 5 and return `nil`. `puts` is then called again with `b`, and since `b` was initialized within the loop block, it is not in scope, resulting in a NameError`

This is an example of local variable scoping rules in relation to the inner and outer scope created when a block is passed to a method call as an argument.

### 3

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```

The ouput of line 9 will the integer 3 due to its reassignment within the loop block, while `puts` always returns `nil`
The output of line 10 will be the integer 2 since it was initialized on line 2, while `puts` always returns `nil`

This is an example of variables as pointers and variable scope. `a` was initialized in the outer scope and will be accessible throughout the program, so when it is reassigned within the block passed to the method call for `loop`, `a` will now reference 3, breaking its link with the object it initially referenced

### 4

**Current time:** 8:30 --> in class

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```
the example method is invoked and passed an argument of the string `'hello'`. The output of the method will be

```ruby
hello
hello
hello
```
The method will return 'nil'

This demonstrates method definition and invocation. Namely, the method invocation of `example` is passed the string object `'hello'` which is then assigned to the method parameter `str`. Now that `str` references the string object, when `puts` is called and passed `str`, it will output the object `'hello'`. This continues 3 times until the break statements conditional is met.

### 5

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)
```
We initialize `word` on line 5 and assign it the strgin Object `'Hello'`. On line 7 we invoke the `greetings` method and pass the object referenced by `word`. Upon invocation, the parameter of `str` will now reference the same object in memeory as `word`. 

Within the method, we pass `str` as an argument to the puts method, which will output `'Hello'`.
We then pass the string `'Goodbye'` as an argument to the `puts` method, which will output `'Goodbye'`, so since this is the last line evaluated within the method, the return will be `nil`, which is always the return of `puts`.

This is an example of how variables intialized in the outer scope are available withing a method's scope when passed as an argument.
### 6

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```

### 7

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```

### 8

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var
```

## Variable Shadowing

### 9

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```

### 10

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```

### 11

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```

## Object Passing / Variables as Pointers

### 12

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

What are `a` and `b`?

```ruby
a = "hi there"
b = a
a = "not here"
```

`a` is initialized and assigned to the string object `"hi there"`

b is initialized and assigned to reference the same object "hi there", and at this point, both a and b point to the same object in memory.

a is then reassigned to the string object `"not here"`, which will break the link between a and the object it previously referenced (`"hi there"`). Now both `a` and `b` point to separate objects in memory, the string `"not here"` and `"hi there"` respectively.

This is a demonstration of variable reassignment and variables as pointers.

### 13

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

What are `a` and `b`?

```ruby
a = "hi there"
b = a
a << ", Bob"
```
This problem will not output anything and will return the string "hi there, Bob"
This demonstrates variable reassignment, variables as pointers, and the mutability of objects.
`a` is initialized and assigned the string object with value "hi there" on line 1. `b` is initalized on 
line 2 and assigned to reference the same string object as `a`
we then call the `<<` method to append the string `", Bob"` to `a`. Since `a` and `b` reference the same object as it was mutated

### 14

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

What are a, b, and c? What if the last line was `c = a.uniq!`?

```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
```

This code demonstates variables as pointers.

On line 1, `a` is initialized to the array `[1, 2, 3, 3]`. On line 2, be is intialized and references the same array object as `a`. 

On line 3, `c` is initialized to the return of the method call of `uniq` on the local variable `a`. Calling `uniq` is non-destructive, and will only set the unique elements of the called collection.

There is not output of the code, but the return after initializing `c` will be `[1, 2, 3]`

### 15

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

What is `a`? What if we called `map!` instead of `map`?

```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```
This code demonstrates Ruby's concept of variable as pointers and mutating vs. non-mutating methods. Specifically that variables in Ruby "point to" or "reference" Objects in memory, and methods can either mutate the Object they were called on directly, or return a reference to a new Object..

`test` will return `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`
and return

on line 1, we define the method `test` with one parameter
on line 5, we initialized the local variable `a` and assign it to the array of strings `['a', 'b', 'c']`
on line 6, we invoke the `test` method, passing it the argument `a`. Upon invocation of the method, the method parameter `b` references the same object that the local variable `a` references.
Within the method, the `map` method invocation, along with the `{..}`}` structure passed into the method as an argument, defines a block.. The `map` method iterates over the Array it was called on and passes each element to the block as the `letter` parameter. The map method captures the return value of the block with each iteration, and since the method is the last line run, the return of the method will be `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`

### 16

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 5.2
b = 7.3

a = b

b += 1.1
```
on line 1, we initialize the local variable `a` to the float object 5.2.
on line 2, we initialize the local variable `b` to the float object 7.3. These are immutable objects.
on line 4, `a` is reassigned to reference the object that `b` points to. At this point, the link between `a` and 5.2 is broken.
on line 6, the `b` local variable is reassigned to the return value of calling the `Integer#+` method on the `b` variable and passing the float 1.1 as an argument. This is Ruby's syntactical sugar for incrementing the value of the `b` variable. Since This is reassignment, the link between `a` and the object b initially pointed to, 7.3, is still in place. `b` would now reference 8.4
### 17

**Current time:** 9:04

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```
on line 6, we intialize the local variable `test_str` to the String object 'Written assessment'
on line 7, we invoke the `test` method (defined above) and pass in the object that `test_str` references. At this point, the parameter of the `test` method and `test_str` reference the same String object. Within the method definition, `str` is reassigned using `String#+` concatenation to point to the object 'Written Assessment'.  This is also Ruby's syntactical sugar for concatenation. This will break the link between `test_str` and `str` pointing to the same object.
We then invoke the destructive `downcase!` method on `str` which will mutate the object to `'written assessment!'`. Since this is the last line ran within the method, it will be the return of the `test` method, so when we invoke the puts method and pass the argument of local_variable `test_str`, it will output the object initialized on line 6 'Written Assessment' and return `nil`
This problem demonstrates Ruby's pass-by-reference-value, object mutability, and variable reassignment, namely that reassignment will break the link between variables and will not reflect the mutation when passed to a method 
### 18

**Current time:** 6:27

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```
on line 5, we initialize the variable `a` to the integer 3. on line 2, we initialized the local variable `b` to the output of the method invocation of `plus` and passed two arguments, `a` and 2
When passed to the method, the parameter `x` will now reference the same object as `a` and the parameter `y` will reference the integer 2. We then reassign `x`, breaking the link between `a` and `x` referencing the same object in memory, to the sum of the two variables `x` and `y`. `x + y` would be `3 + 2`, so the reassigned `x` will now point to 5. Because there is no more code to evaluate in the method, the method will return 5, and it is assigned to `b`.
We call the `puts` method and pass the argument `a` which still points to 3 and will output 3 and return nil
We call the `puts` method and pass the argument `b` which points to the output of `plus`, 5, and will output 5 and return nil
This demonstrates Ruby's pass by reference value and variable reassignment when a local variable is invoked with a method

### 19

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y
```

### 20

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
```

### 21

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name
```

### 22

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

What is `arr` here?

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
```

### 23

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2
```

## Object Mutability / Mutating Methods

### 24

**Current time:** 6:48

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```
on line 7, we initialize the variable `s` to the String object `'hello'`. On line 8, we initialized the variable `t` to the output of the method invocation of `fix` and pass in the argument of the object referenced by `s`.
Within the method definition, the parameter `value` will be assigned to the object referenced by `s`, so both `value` and `s` will reference the same object in memory.

On line 2, we invoke the destructive `upcase!` method on `value` which will mutate the object to 'HELLO', where `s` and `value` still point to this mutated object. Next, we invode the `concat` method and pass in `'!'` which will append the `!` to `'HELLO!'`. We then call `value` and since this is the last line evaluated within the method, it will be the return value of `fix`

This problem demonstrates object passing and mutating methods, namely that local variables that are passed to methods will share a refernce with the method parameter. When that parameter is mutated, the local varible intialized outside of method will point to the mutated object as well
### 25

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

### 26

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

### 27

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)
```

### 28

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a
```

### 29

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
num = 3

num = 2 * num
```

### 30

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = %w(a b c)
a[1] = '-'
p a
```

### 31

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

### 32

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

## Each, Map, and Select

### 33

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end
```
 on line 1 we initialize the lcoal variable  `array` to `[1, 2, 3, 4, 5]`
 We then invoke the `select` method on `array` and pass a block as an argument denoted by `do..end` with the parameter of `num`
 When invoked, it gets passed a block. Each element in the calling collection is the passed to the block parameter `num` on each iteration. Select will the return a new collection of all the elements that have returned a truthy value when passed to the block.
 within the block, we invoke the method `puts` on the local variable `num` based on the condition of invoking the method `odd?` on `num`. If we find an odd value, it will be output by `puts` and return `nil`. The output will be 
 ```ruby
 1
 3
 5
 ```
 This demonstrates how collection methods react to block statements
### 34

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
```

### 35

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array
```

### 36

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array
```

### 37

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```

### 38

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }
```

### 39

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
```

### 40

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array
```

### 41

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array
```

### 42

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "hello"

[1, 2, 3].map { |num| a }
```

### 43

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

## Other Collection Methods

### 44

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].any? do |num|
  num > 2
end
```

### 45

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

### 46

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
```

### 47

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
```

### 48

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
```

### 49

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
```

### 50

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
```

### 51

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even
```

## Truthiness

### 53

**Current time:**

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```

### 54

**Current time:** 

What does the following code return? What does it output? Why? What concept does it demonstrate?

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
