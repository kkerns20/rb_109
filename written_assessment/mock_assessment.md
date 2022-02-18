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
First we intialize the local variable `a` and assign it to the integer `10`.

The we call a `while` loop and pass it a `do..end` block. This will execute while the condition `true` is `true`, so it will execute. Within the block, we reassign `a` to reference the integer `5`. The break statement will exit the `while` loop.

We then invoke the `puts` method and an argument of the object referenced by `a`. This will output `5` and return `nil`.

This problem demonstrated how local variables are accessible within a block for reassignment.

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
We invoke `some_method on line 37, which doesn't have any arguments.

Within the method, we initialize the variable `a`, local to the method scope. and assign it to the integer `1`. We then invoke the `times` method on the integer `5` and pass it a `do..end` block as an argument. This creates an inner scope.

Within the block, we invode the `puts` method on the object referenced by the variable `a` which will output `1`. We then initialize `b` to the block's scope and assign it the integer `2`. This block will continue this execution 5 times.

We then end the `times` block and invoke the `puts` method and pass the object referenced by `a`. This will output `1`. We then attempt to invoke the `puts` method on the variable `b`, but it is local to the blocks scope and therefore not accessible to the `some_method` scope. It will throw an `undefined local variable or method` exception or `NameError`.

Since this is the last evaluation for the method, the overall output would be 
```
1
1
1
1
1
1
undefined local variable or method (NameError)
```
This demonstrates how variable can be accessed within an inner block scope, but variables intialized in a block scope are not accessible in outer scope.

## Question 3

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```
First we intialize the local variable `a` and assign it to the string object `"Xyzzy"`

We then invoke the `my_value` method (defined above) and pass it an argument of the object referenced by `a`. When the method is invoked, the object referenced by `a` will be assigned to the parameter `b`. At this point, both `a` and `b` willl point to the same object in memory.

Within the object, we call the setter method `#[]=` which mutates the Object it is called on by reassigning the element to the the Object passed in as an argument. The means the elemenet at index `2` is reassigned to the string object `'-'`. This change will be visible where the object is referenced. Since this is the last evaluation of the method, the return value of `my_value` will be `"Xy-zy"`

we then invoke the `puts` mehtod and pass the object referenced by `a`. It will output `"Xy-zy"` and return `nil`.

This problem demonstrates Ruby's object mutatbility through the setter method. It looks like reassignment, but it is infact a mutating method. Also, we notice how Ruby can be a pass by refernce value.

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
We initialize the local variable `str` and assign it the string object `'hello'`. We then invoke the `amethod` method (defined above) and pass it the object referenced by `str` as an argument. When we invoke `amethod` and pass it the object referenced by `str`, this object is assigned to the method parameter `param`. Now both `str` and `param` reference the same object in memory.

Within the method, the local variable `param` is reassigned through some syntatical sugar by concatenating `" universe"` to the object `param` referenced, `'hello'`. This returns a _new_ string object and breaks the link between `str` and `param`.

We then invoke the `<<` method and pass it the string object `' world'` as an arugment. This is a mutating method that will append `' world'` to the object `param` references.
Since this is the last evaluation of the method, the return value will be `'hello universe world'`.

We then invoke the `puts` method and pass it the object referenced by `str`, which will output `'hello'` and return `nil`. Recall the reassignment within the method broke the link between the local variable and the method parameter.

This demonstrates how a object referenced by a variable can be passed as an argument  and how reassignment will cause the link between the parameter and the variable to break.

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
After initalizing `test_str` to reference the string `'Written Assessment'`, it is passed as an argument to the method invocation of `test`. When we invoke `test` and pass in the object referenced by `test_str`, the method parameter `str` will be assigned to the same object, `'Written Assessment'`. Now `test_str` and `str` now point to the same object in memory.

Within the method, we reassign the local variable `str` through some syntactical sugar that will concatenate `'?'` on the object reference by `str`. This will break the link between `test_str` and `str`.

We then invoke the mutating method `downcase!` on the object referenced by `str`. Since this is the last evaluation of the method, the return of `test` will be `'written assessment?`.

We finally invoke the `puts` method and pass the object referenced by `test_str` as an argument. This will output `'Written Assessment'` and return `nil`.

This demonstrates how methods can access variables passed in as arguments and how reassignment will break the link between those variables and the parameter of the method.

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

We initialize the local variable `var` and assign it to the value returned by invoking the method `test` (defined above). `test` does not have a parameter, so within the method's definition, we invoke the `puts` method and pass the string object `'written assessment'`. This will output `'written assessment'` and return `nil`. Since this is the last evaluation of the method, the return value will be `nil`, which is assigned to `var`.

We then control execution through an `if` expression. This will test is `var` is `true`, or if it is `false` or `nil`, it will exectue the `else` expression. Since the local variable `var` is assign to `nil`, we will invoke the `puts` method and pass it the string object `'interview'`. The output of the control expression will be `'interview'` and return `nil`.

This demonstrates how control expressions operate, where the `if` will must evaluate to a true or when it doesn't, the `else` expression will be executed.

## Question 7

```ruby
animal = 'dog'

loop do |animal|
  animal = "cat"
  break
end

puts animal
```
We initialize the local variable `animal` and assign it the string object `'dog'`.

We then invoke the `loop` method and pass it a `do..end` block as an argument with a parameter of `animal`. Within the block, we initialize the block's local variable `animal` to the string object `'cat'`. This is due to variable shadowing where the block parameter of the same name `animal` will take precedence.

We then use a `break` statement to exit the block.

We invoke the `puts` method and pass it the object referenced by `animal`, which will be the outer scoped `animal`. This will output `'dog'` and return `nil`.

This demonstrates how variable shadowing will not allow a block variable of the same name to access an outer scoped variable.

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
We initialize the local variable `animal` and assign it the string object `'dog'`.

We then invoke the `puts` method and pass it a `do..end` block as an argument with parameter `animal`. This creates an inner scope.

Within the block, we reassign the block local variable `animal` to the string object `'cat'`. This is because the block parameter of the same name takes precedence and this is what is initialized within the block level scope instead of the outer scoped `animal`. This is an example of variable shadowing.

We then initalize the block level local variable `var` and assign it to the string object `'ball'`. The `break` statement will exit the `loop` block.

We then invoke the `puts` method and pass it the object referenced by the outer scoped `animal` as an argument, which will output `'dog'`. Then we invoke the `puts` method on the object referenced by `var` as an argument. When we pass `var` to `puts`, it causes the program to throw a `NameError`. This is because `var` is a local variable that was initialized in inner scope, and outer scope cannot access variables that are initialized in inner scope.

This demonstrates variable shadowing and variable scope as it pertains to outer and inner scoped variables.


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
First, we initalize the global variable `MY_TEAM` and assign it to the string object `"Los Angeles Clippers".

We invoke the `loop` method and pass a `do..end` block as an argument. Within the block, we reassign `MY_TEAM` and assign it the string object `"Phoenix Suns"`. We then use a `break` statement to exit the loop.

Then we call a `while` loop. This will execute while the condition `true` is `true`, so it will execute. Within the block, we reassign `MY_TEAM` to reference the string object `"Los Angeles Lakers"`. The break statement will exit the `while` loop.

We then define the `best_team` method without a parameter. Within the method, we attempt to once again reassign the global variable, and at this point, Ruby will throw an exception of a `SyntaxError` for `dynamic constant assignment`.

This demonstrates how a global variable is accessible in all scopes, but it also shows poor practice on the proper use of global variables.

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
We initialize the local variable `array` and assign it the array of integers `[1,2,3,4,5,6,7,8,9,10]`

We then initialize the local varibale `odds` and assign it the value returned by calling `select` upon `array`, passing `select` a `do..end` block with parameter `n`.

When we call `select`, it iterates over the calling array and passes each element into the block. The current iteration's element is assigned to the block parameter `n`.

Within the block we increment the local variable `n` by 1. `select` uses the return value of the block to perform selection. It will return a new array of those elements from the calling collection for which the block returns a truthy value. In this case, the block always returns `true`, as any object in Ruby is true besides `false` and `nil`. Since this is the last evaluation of he block, the return value assigned to odds will be `[1,2,3,4,5,6,7,8,9,10]`.

We then invoke the 'p' method and pass it the object referenced by `odds`. This will print and return `[1,2,3,4,5,6,7,8,9,10]`.

We then initialize the local varibale `incremented` and assign it the value returned by calling `map` upon `array`, passing `map` a `do..end` block with parameter `n`. `map` will iterate over all the elements in the array referenced by `words`, passing each into the block. The current iteration's element will be assigned to the block parameter `word`.

Within the block, we invoke the `odd?` method on the local variable `n`. `odd?` will check to see if an integer is odd. If it is, it will return a boolean `true`, and if it isn't, it will return `false`. Because there is no more code to be evaluated within the block, this will also be the return value of the block. `map` uses the return value of the block that gets passed to it to perform transformation, returning a new array containing the return value of the block for each element in the calling array. In this case, the return value assigned to `incremented` will be `[true, false, true, false, true, false, true, false, true, false]`.

We then reassign the local varibale `incremented` and assign it the value returned by calling `map` upon `array`, passing `map` a `do..end` block with parameter `n`. `map` will iterate over all the elements in the array referenced by `words`, passing each into the block. The current iteration's element will be assigned to the block parameter `word`.

Within the block, we invoke the `odd?` method on the local variable `n`. `odd?` will check to see if an integer is odd. If it is, it will return a boolean `true`, and if it isn't, it will return `false`. We then invoke the `puts` method and pass it the current object referenced by `n`, which will output that element and return `nil`. Since this is the last evaluation of the block, this will be the return value. `map` uses the return value of the block that gets passed to it to perform transformation, returning a new array containing the return value of the block for each element in the calling array. In this case, the output of the block will be 
```
1
2
3
4
5
6
7
8
9
10
```
and the return value assigned to incremented will be `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`. This evidenced when this object is pass to the call of the `p` method that will output and return `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`

## Question 11

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

We first initialize the local variable `a` and assign to the integer `7`. We then invoke the `my_value` method (defined above) and pass the object referenced by `a` as an argument. When we invoke the method, the object referenced by `a` will be assigned to the parameter `a`. At this point, both the local variable and parameter of the same name point to the same object in memory.

Within the method, the method scoped variable `a` is reassigned through syntactical sugar of `a = a + 10`. This breaks the link between the outer scoped variable and the parameter of the method. Since this is the last evaluation of the method, the method will return `17`

We then invoke the `puts` method and pass the object referenced by `a` as an argument. This will output `7` and return 'nil'.

This demonstrates how variables passed as arguments to methods can be accessed and reassignend, showing how variable behaves as pointers.

## Question 12

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```
We initialize the local variable `a` to the integer `7`. We then invoke the `my_method` and pass the object referenced by `a` when incremented by `5`, which would be '12'. When we invoke the method, the object passed as an argument , `12`, will be assigned to the parameter 'b'.

Within the method, we initialize the method local variable `a` to the object referenced by `b`. Since this is the last evaluation of the method, the return of the method will be `12`

We then invoke the `puts` method and pass the object referenced by `a`, which will output `7` and return `nil`.

This demonstrates how variables initialize in inner scope or method definition scope will not be accessible in outer scope.

## Question 13

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```
First, we initialize the local variable `a` and assign it the string object `'Xyzzy'`. We then invoke the `my_value` method and pass it the object referenced by `a` as an argument.

When we invoke the method, the object passed as an argument will be assigned to the parameter `b`. At this point, both `a` and `b` both point to the same object in memory.

Within the method, `b` is reassigned to the string object `'yxxyX'`. This breaks the link between `b` and the object referenced by `a`. Since this is the last line evaluated within the method, the return of the method will be `'yxxyX'`.

We then invoke the `puts` methos and pass it the object referenced by `a` as an argument, which will output `'Xyzzy'` and return `nil`.

This demonstrates how variable initialized in outer scope can be passed to a method as an argument.

## Question 14

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```
First we initialize the local variable `a` and assign it to the integer `7`. We then initialize the local variable `array` and assign it to the array of integers `[1, 2, 3]`

We then invoke the `each` method on `array` and pass it a `do..end` block with `element` as its parameter. `each` iterates over all the elements in the calling array `array` and passes each into the block. The current iteration's element is assigned to the block parameter `element`.

Withing the block, we reassign the local variable `a` to each of the elements of the calling array. Since this is the last evaluated line of the block, the return of the `each` method will be the original array `[1, 2, 3]`.

We then invoke the `puts` method and pass the object referenced by `a`, which will output `3` and return `nil`.

This problem demonstrates how local variables can be accessed and reassigned within an inner scope.


## Question 15

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```
We first initialize the local variable `array` and assign it to the array of integers `[1, 2, 3]`

We then invoke the `each` method on `array` and pass it a `do..end` block with `element` as its parameter. `each` iterates over all the elements in the calling array `array` and passes each into the block. The current iteration's element is assigned to the block parameter `element`.

Within the block, we initialize the inner scoped variable `a` and assign it to each of the elements of the calling array. `each` ignores the return value of the block, and always returns the original calling collection. Since this is the last evaluation of the block, `each` will return the calling array `[1, 2, 3]`

We then invoke the `puts` method and pass it the object referenced by `a`, which was scoped at the block's inner scope. It will not be accessible in the outer scope, so Ruby will throw an exception of `undefined local variable or method `a' for main:Object (NameError)`.

This demonstrates how variable initialize in inner scope are not accessible in outer scope.


## Question 16


```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```
First we initialize the local variable `a` and assign it to the integer `7`. We then initialize the local variable `array` and assign it to the array of integers `[1, 2, 3]`

We then invoke the `each` method on `array` and pass it a `do..end` block with `a` as its parameter. `each` iterates over all the elements in the calling array `array` and passes each into the block. The current iteration's element is assigned to the block parameter `a`.

Within the block, we reassign the block local varibale`a` using some syntactical sugar of incrementing `a` by 1. `each` ignores the return value of the block, and always returns the original calling collection, so it will return `[1, 2, 3]`.

Then, the object referenced by local variable `a` is passed to the `puts` method. This will output the integer object `7` and return `nil`. This is because when `a` is reassigned within the inner scope of the block, the block parameter of the same name `a` takes precedence, and this is what is reassigned in the place of the local variable `a` initialized in outer scope. This is an example of variable shadowing.

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

First we initialize the local variable `a` and assign it to the integer `7`. We then initialize the local variable `array` and assign it to the array of integers `[1, 2, 3]`

We then invoke the `my_value` method (defined above) and pass it the object referenced by `array` as an argument. When we invoke the method, the object referenced by `array` will be assigned to the parameter `ary`. At this point, both `array` and `ary` will point to the same object in memory.

We then invoke the `each` method on `ary` and pass it a `do..end` block with `b` as its parameter. This will create a third level scope, meaning we will only be able to access elements at the method level scope, which there are none. `each` iterates over all the elements in the calling array `array` and passes each into the block. The current iteration's element is assigned to the block parameter `b`.

We use some syntactical sugar for reassignment read as `a = a + b`, so we attempt to reassign the outer scoped variable `a` to the sum of `a` and `b`. Since `a` is scoped at the first level, it is not accessible to the third level `each` block, so `a` would be `nil` and when we attempt to add `b` to `a`, Ruby will throw an exception of `undefined method for nil:NilClass (NoMethodError)`.

## Question 18

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```
We initialize the local variable `array1` to the array of strings `%w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)`.
We then initialize the local variabe `array2` to an empty array.

We call `each` on `array1` and pass it  a `{..}` block with `value` as its parameter. `each` iterates over all the elements in the calling array `array1` and passes each into the block. The current iteration's element is assigned to the block parameter `value`.

Within the block, we use the descriuctive method `<<` to append the local variable `value` to `array2`. Since this is the last evaluation of the block, the return of the block will be the original calling array of `["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]` since `each` ignores the return value of the block.

We call `each` on `array1` and pass it  a `{..}` block with `value` as its parameter. `each` iterates over all the elements in the calling array `array1` and passes each into the block. The current iteration's element is assigned to the block parameter `value`.

Within the block, we call the destructive method `upcase1` on the local variable `value` based on the control expression `if` evaluates to true. For the `if` expression, we invoke the `start_with?` method on the local variable `value` and pass it the collection of strings `('C', 'S')` as an argument. It will return a boolean based on if the current element `value` references starts with a `'C'` or `'S'`. Since this is the last evaluation, the return value will be the original calling array since `each` ignores the return value of the block, which would be `["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]`.

We then invoke the `puts` method and pass the object referenced by `array2` as an argument, which will output
```
Moe
Larry                                                                
CURLY                                                                
SHEMP                                                                
Harpo                                                                
CHICO                                                                
Groucho
Zeppo
```
and return `nil`

This example demonstrates how the two arrays point the the same elements in memory, so when a mutation occurs in place on a given element, it will be seen by any variable that references it, as evidenced by calling `puts` on `array2`.

## Question 19

```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```
First we initialize the local variable `a` and assign it to the array of strings `['a', 'b', 'c']`. We then invoke the `test` method and pass it the object referenced by `a`. When we invoke the method, the object referenced by `a` will be assigned to the parameter `b`. At this time, both `a` and `b` will point to the same object in memory.

Within the method, we invoke `map` on the local variable `b` and pass it a `{..}` block as an argument with `letter` as a parameter for the block. We now have a first, second and third level scope.

Because the `map` method returns a _new_ array object, where each element in the calling array is transformed according to the return value of the block that gets passed to it, we know that the `map` method in this case will return a new array object, `['I like the letter: a', 'I like the letter: b', 'I like the letter: c']`.

This is because each element in the calling array (`['a', 'b', 'c']`) is passed to the block on each iteration, and used in string interpolation to return the strings listed in the array above.

Because the call of `map` is the last bit of code in the `test` method, the array `['I like the letter: a', 'I like the letter: b', 'I like the letter: c']` will be returned by `test`.

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
We invoke the `map` method on the nested array `[[8, 13, 27], ['apple', 'banana', 'cantaloupe']] and pass it a `do..end` block as an argument, with `arr` as the block's parameter. `map` will iterate over all the elements in the array referenced, passing each into the block. The current iteration's element will be assigned to the block parameter `arr`.

Withing the block, we invoke the `select` method on the local variable `arr` and pass it a `do..end` block as an argument, with `item` as its parameter. When we call `select`, it iterates over the calling array and passes each element into the block. The current iteration's element is assigned to the block parameter `item`.

Within the `select` block, we have a control `if/else` expression. For the `if` test expression, we check to see if the object `item` currently references is equal to chaining the call of the `to_s` and `to_i` methods on the object `item` currently references. This will check to see if the object is an integer. If this expression evaluates to true, the then expression will check to see if that object is greater than `13`. If the element passes this as well, `map` will use the return value to return a new array of the return values.

When the `if`'s test expression evaluates false, then the `size` method is invoked on the object referenced by `item` so size if the size of the string object is less than 6.

Again, `map` will use the return value to return a new array of the return values.

Since this is the last line evaluated in the `select` block, the returned values will be `27` and `'apple'`, which `map` will create a new nested array `[[27], ["apple"]]`.


## Question 21

```ruby
[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end
```
We invoke the `map` method on the nested array of arrays of strings and pass a `do..end` block as an argument. The block also has a parameter of `sub_arr`. `map` will iterate over all 3 array elements in `[['a', 'b'], ['c', 'd'], ['e', 'f']]`, passing each into the block. The current iteration's element will be assigned to the block parameter `sub_array`.

We then invoke `map` on `sub_array` and pass a `do..end` block as an argument. The block also has a parameter of `letter`. `map` will iterate over all elements in the object referenced by `sub_array`, passing each to the block.

Within the block, we invoke `upcase` on the local variable `letter`. This will upcase all elements, and since it is the last line evaluated within the block, it will be the return value. `map` uses the return value passed to it to perform transformation, so each `sub_array` will be uppercased, and since `map` once again uses the return value for transformation, the return value of the initial call of `map` will be `[["A", "B"], ["C", "D"], ["E", "F"]]`