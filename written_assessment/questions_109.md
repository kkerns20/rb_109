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
First we initialize the local variable `arr` and assign it the array of integers `[1, 2, 3, 4]`. We then initialize the local variable `counter` and `sum`, assigning them both to the integer `0`.

We invoke the `loop` method and pass a `do..end` block as an argument. within the block, we reassign `sum` to the element referenced from `arr` dependent on the value passed of `counter`. We then increment `counter` by using some syntactical sugar in the form of reassignment of `counter` plus 1. Then we have a break statement to break out of the loop based on a conditional `if`. If the object `counter` references is equal to the size of the object referenced by `arr`, break will exit the loop. This will loop four times through, adding each element of `arr` to the object referenced by `sum`.

We then call the `puts` method and pass in an argument of a string with string interpolation. The method will output `""Your total is 10", since string interpolation accesses the object that `sum` references, which will be the integer 10 and return `nil`

### 7

**Current time:** 3:24

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```
First we initialize the local variable `a` and assign it to the string object `'Bob'`. We then invoke the `times` method on the integer `5` while passing an argument in the form of a `do..end` block. The block has one parameter, `x`. 

Within the block, we reassign `a` to the string object `'Bill'`. This will break the link between `a` and the object its initially referenced. This will happen 5 times.

We then invoke `p` and pass an argument of the object referenced by `a`. Since it has been reassigned within the `loop` block, which can access variable in the outer scope, the output will be `'Bill'` and will return `nil`.

This demonstrates how an variable initialized in the outer scope can be accessed by the inner scope of a block.

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

**Current time:** 7:42

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
First, we initialize the local variable `a` and assign it to the integer `4`, then we initialize the local variable `b` and assign it to the integer `2`.

We then invoke the `times` method on the integer object `2` and pass it a `do..end` block as an argument with parameter `a`, which will be assigned the iteration number on each iteration of the block starting at `0`. This is variable shadowing as within the block, when we reference `a`, scoped to the block level, it will not access the outer scoped `a`.

Within the block we reassign `a` to 5 and then pass the block local variable `a` to puts. The times method then runs the same process again, which will output:
```ruby
5
5
```
and return nil. Since puts is the last evaluation of the block, `nil` will be the return of the `times` method.

We then invoke the method `puts` and pass an argument of the object referenced by the outer scoped `a`, which will print `4`. Finally we invoke the method `puts` and pass an argument of hte object referenced by `b`, which will print `2` and return `nil`.
### 10

**Current time:** 6:22

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
n = 10

1.times do |n|
  n = 11
end

puts n
```
First we initialize the local variable `n` and assign it to the integer `10`.

We then invoke the `times` method on the integer ` and pass it a `do..end` block as an argument. The block has one parameter `n` that will be assigned the iteration number on each iteration of the block, starting at `0`.

Within the block, we reassign the block scoped variable `n` to `11`. Because the block level variable `n` and the outer scope `n` have the same name, variable shadowing will prevent the block from accessing and reassigning the outer scoped variable.

We then invoke the `puts` method and pass the argument of the object referenced by the outer scope local variable `n`. This will output `10` and return `nil`
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
We initialize the local variable `y` and assign it to the string object `'a'`. We then invoke the `increment` method (defined above) and pass an argument of the object referenced by `y`. 

When we pass the argument of `y`, the `increment` method's parameter `x` will now point to the same object in memory as `y`.

Within the method, use use the destructive method '<<' and pass the argument of the string 'b'. '<<' is a method that mutates the caller and returns the calling object after mutations. This will append 'b' to the object referenced by the local variable by 'x'. This mutation happens in place without creating a new object, so 'x' and 'y' will point to 'ab'.

Because this is the last evaluation of the method, it will be `increment` return value.

We will see this when we finally invoke the `puts' method and pass an argument of `y`. This will output 'ab' and return `nil`.

This example highlights how Ruby behaves like a pass by reference value, specifically that when multiple variable point to the same object in memory and that object is mutated, they both will still reference the same _mutated_ object.

### 20

**Current time:** 5:48

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
```
We initialize the local variable `name` and assign it to the string object `'jim'`. We then invoke the method `change_name` (defined above) and the object referenced by `name` is passed as its argument.

When we pass the argument to `change_name`, its parameter `name` will now be assigned to the object referenced by the outer scoped local variable `name`. Both the parameter of the method and the local variable 'name' point to the same object.

Within the method's scope, the local variable `name` will be reassigned to 'bob', breaking the link between the outer scope `name` and the method scope `name`. Since this is the last line evaluated by the method, the method will return 'bob'.

We then invoke the `puts` method and pass the object referenced by the local variable `name` as an argument. This will output `'jim'` and return `nil`.

This demonstrates Ruby's ability to pass variables as arguments and how reassignment will break the link between variable referencing objects in memory.
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
On line 1, we initialize the local variable `a` to the Array `[1, 3]`. On line 2, we intialize the local variable `b` to the Array `[2]`. On line 3, we initialize the local variable `arr` and assign it the nested Array which will call local variables `a` and `b`, which will be `[[1, 3], [2]]`.
We then call `arr` which will return `[[1, 3], [2]]`.

On line 6, we reference the object at index 1 of Array `a` and reassign it to 5. This is reassigment of the element at index 1 without mutating the Array `a` itself.
We then call `arr` which will return `[[1, 5], [2]]`
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

**Current time:** 7:24

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```
First, we initialize the local variable `s` and assign it to the string object `'hello'`. We then initialize the local variable `t` and assign it to the value returned by invoking the method `fix` (defined above) and passing an argument of the object referenced by `s`.

When we invoke `fix`, the parameter `value` of the method will now be assigned to the object referenced by the variable `s`. The will now point to the same object in memory.

Within the method definition, we reassign the local variable `value` to the return of calling the method `upcase` on `value`. In this case, `upcase` will not mutate the caller and returns a new string object `'HELLO'`. This will break the link between `value` and original object referenced by `s`. 

Then, we call `concat` and pass in the argument of `'!'` on the local variable `value`, which will append the `'!'` to the object `value` references. This method does nutate the caller and will return the same string object but modified. Since this is the last evaluation within the method, the return will be `'HELLO!'`, recalling that it was assigned to `t`.

This demonstrates Ruby's object mutability and how Ruby behaves like a pass by reference value. Also, it portrays how reassignment of variables will break the link, as evidenced by `s` still referencing `hello` when run.

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
We intialize the local variable `names` and assign it to the array of strings `['bob', 'kim']`. We then invoke the `add_name` method and pass in two arguments, `names` and the string object `'jim'`.

When we invoke `add_name`, the parameters `arr` and `name` will now reference the same objects as `names` and `jim`, respectively.

Within the method, we reassign the local variable `arr` to to the output of invoking the destructive method `<<` and passing the local variable `name` to `arr`. This will append the string referenced by `name` to `arr`. Since this is the last evaluation of the method, its return value will be `["bob", "kim", "jim"]`.

Normally, we would consider reassignment to break the link between a variable and the object it previously referenced. However, in this case, we are reassigning the same object back to the variable, so the link between the two is maintained.

We then invoke the `puts` method and pass it the object that `names` references. This will output
```ruby
bob
kim
him
```
and return `nil`.

This is a demonstration on how Ruby is a pass by reference value language and how mutation on an object will affect the caller.

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

**Current time:** 5:40

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
```
We initialized the local variable `arr` to the Array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` on line 1

On line 3, we invoke the `select` method on the object that is reference by `arr` and pass it a `{..}` block as an argument. `Select` will iterate through each element in the object and return a new array based on the truthiness of the block. The block's parameter `n` will be assigned each element, in turn, from the caller. We then call the `odd?` method on the variable `n`. This will determine if each element passed to n is an odd number. 
Since `odd?` is the last evaluation of block, the array that select will return will be `[1, 3, 5, 7, 9]` 

This example demonstrates Ruby's ability to iterate through collections and the use of truthiness in selection.
### 35

**Current time:** 6:14

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array
```
First, we initialize the local variable `arr` and assign it to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. We then initialize the local variable `new_array` and assign it to the return value of invoking the `select` method on `arr`. `select` is passed a `do..end` block as an argument with a parameter of `n`. 

When we invoke `select`, it iterates over the array `arr` and passes each element to the block. The current iteration's element is assigned to the block parameter `n`.

Within the block, we call the `+` method on the local variable `n` and pass it the argument of `1`. This will increment the array by 1. Since this is the last line of the block, the return of select will be `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. Select returns a new array based on the truthiness of the block, and the each iteration of the block will always return true, due to Ruby considering all objects excepet nil and false to be truthy. Therefore, when we call the `p` method and pass it the object referenced by `new_array` the output will be `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`
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

**Current time:** 7:32 - with a big mistake

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```
First, we initialize the local variable `words` and assign it the array object `['jump', 'trip', 'laugh', 'run', 'talk']. We then initialize the local variable `new_array` and assign it to the value returned by invoking the `map` method on the object referenced by `words`, passing `map` a `do..end` block as an argument with the parameter of `word`.

Invoking the method `map` on an array object will assign each element from the called array to be reference by the parameter `word`. `Map` returns a new array based on the return value of the block.

Within the block, we invoke the `start_with?` method on the local varible `word` and pass in the argument of the string object 't'. `Start_with` will return a boolean if the object that `word` currently is assigned to if the object at index 0 is a `'t'`. 

Since this is the last evaluation of block, it will also be the return value. `new_array` will now reference `[false, true, false, false, true]`. This can be seen when we call the 'p' method and pass it object referenced by `new_array`
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

**Current time:** 7:53

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array
```
At first, we initialize the local variable `arr` and assign it the the Array `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. We then initialize the local variable `new_array` and assign it to the value returned by calling the method `map` on `arr`. When we invoke the method `map`, we also pass a `do..end` block as an argument with the parameter `n`.
Map will iterate through each element within `arr` and pass it to the parameter `n`. `map` will return a new array based on the return value of each iteration, stayin the same size as the calling array. Within the block, we check to see if the variable n (our current element's iteration) is greater than 1
 The return will be a boolean, and since this call is the last evaluation of map, `map` will return `[false, true, true, true, true, true, true, true, true, true]. This array is assigned to `new_array`.

we then pass `new_array` as an argument while we invoke the `p` method, which will output and return `[false, true, true, true, true, true, true, true, true, true]` 

This demonstrates the functionality of the method `map` as it iterates through a collection, making us hyperaware of return values
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

**Current time:** 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].any? do |num|
  num > 2
end
```
We invoke the method `any?` on the array of integers `[1, 2, 3]` and pass a `do..end` block as an argument. The block has one parameter `num` that will be assigned to each element of the array in turn. `any?` will return a boolean based on the truthiness of the block, specifically if any of the elements passed to the block satisfy the block.

Within the block we assess whether the local variable `num` is greater than 2. Each element of the calling array will be passed to the block, and `any?` will return true since the last element of the array, `3`, is greater than '2'. Since this is the last evaluation of the block, `true` will be the value returned for the `any?` method.
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
