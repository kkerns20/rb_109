# Variables as Pointers

- [Assignment](#assignment)
- [Reassignment](#reassignment)
- [Immutable Objects](#immutable-objects)
- [Mutable Objects](#mutable-objects)
  - [Setter Methods](#setter-methods)
  - [Mutating Methods](#mutating-methods)
- [Pointer Arguments](#pointer-arguments)
- [Equal Values](#equal-values)

## Assignment

In Ruby, variables are basically containers that house _references_ to objects in memory. These objects are assigned to variables using an assignment statement which utilizes the assignment operator `=`.

```ruby
a = "a string object"
```

Once assigned, variables are said to _reference_ the assigned object. The variable stores the object id of the object in quesiton, which can be pulled up by invokig the `object_id` method.

```ruby
a = "a string object"
a.object_id             # => 260 (or some other number)
```

( a ) -------> "a string object"

Two variables may reference the same object in memory, if one is assigned to the other. In this case, any change to the object made through one variable will be reflected by the other since they both reference the same object.

```ruby
a = "a string object"
a = b
a.object_id == b.object_id    # => true
```
( a ) -------> "a string object"

( a ) -------> "a string object"
( b ) ---------------^

## Reassignment

Reassignment creates a new and different object which is then assigned to the variable. The original object referenced by the object is not affected by reassignment. This holds true for reassignment shorthand methods such as `+=`, `-=`, `*=`, etc...

```ruby
a = "a string object"
b = a
a = "another string object"
a.object_id == b.object_id    # => false
puts a                        # => "another string object"
puts b                        # => "a string object"
```

_written assessment prep_
Above, the local variable `a` is initialized and assigned ot the string object `"a string object"`. Then, the local variable `b` is initialized and assigned to the object referenced by local variable `a`. At this point, both variables reference the same object in memory, which can be demonstrated by comparing the return values after calling the `object_id` method on each.

Next, the local variable `a` is reassigned to the the string object `"another string object"`. This breaks the link between `a` and the object is originally referenced, `"a string object"`, causing it to reference the new object `"another string object"`. `b`, however, still references the original object `"a string object"`. This can be demonstrated by comparing the return values of call `object_id` on each variable or simply outputting the values referenced by both `a` and `b`.

( a ) -------> "a string object"

( a ) -------> "a string object"
( b ) ---------------^

( a ) -------> "another string object"
( b ) -------> "a string object"


## Immutable Objects

Number data types (such as integers and floats) and the two Boolean objects `true` and `false` are **immutable objects** in Ruby. This means that they cannot be changed or modified. Some other types of objects that are immutable inclue `nil` and ranges `(1..100)`.

When arithmetic operations occur, we are not changing the number object in any way. Rather, we are reassigning the variable that references it to a new number object returned by whatever method we invoke to manipulate the original value.

```ruby
a = 2
puts a.object_id  # => 5
a = 2 + 2         # => w/o syntactical sugar a = 2.+(2) returns 4
puts a.object_id  # => 9
puts a            # => 4

# with a reassignment shortcut
a = 2
puts a.object_id  # => 5
a += 2
puts a.object_id  # => 9
puts a            # => 4
```

( a ) -------> [ 2 ]

( a ) -------> [ 2 ] ---> < .+(2) > ==invokes method on object==
               [ 4 ]                ==method returns new value==

( a )          [ 2 ]                ==no longer have reference to the old object==
  |
  -----------> [ 4 ]                ==the variable is reassigned to the newly returned value==

## Mutable Objects

*Mutable objects** are objects that _can_ be changed. They include things like Strings and collection data types like Arrays and Hashes. Mutable objects can be changed by two ways:
    - by **setter methods**
    - by being passed into a [mutating method](./mutating1.md#mutating-methods)

### Setter Methods

**Setter method**
: one that changes _a part_ of an object, such as when elements withing a collection are re-assigned. They often come in the form of [element assignment](./collection_methods1.md#element-assignment), such as with `String#[]=`, `Array#[]=`, and `Hash#=`. Though these statements may appear to be using the assignment operator `=`, they are instead discreet methods defined for each object type. The way we can add a space to them to make them seem like regular assignment is a part of Ruby's **syntactical sugar**. Setter method's should always be treated as _descructive_.

When a collection object is assigned to a variable, the variable contains a reference to that object _as a whole_. Each individual object within the collection is a different reference to the element object withing the collection.

```ruby
a = ['abc', 'def', 'ghi']
a.object_id               # => 260
a[0].object_id            # => 280
a[1].object_id            # => 300
a[2].object_id            # => 320
```

| Array Object | obj_id == 260 | String Object |
| :----------: | :-----------: | :-----------: |
| a[0] | 280 | "abc" |
| a[1] | 300 | "def" |
| a[2] | 320 | "ghi" |

We can use a setter method (`Array#[]=` in this case) to modify individual elements within the collection. Note that this only changes the object / object reference on the level on the individual elements, and the collection object as a whole remains the same.

```ruby
a = ['abc', 'def', 'ghi']
a.object_id               # => 260
a[2].object_id            # => 320

a[2] = 'xyz'
a.object_id               # => 260
a[2].object_id            # => 360
a                         # => ["abc", "def", "xyz"]
```

Because the object reference for the collection as a whole remains unchanged, but the elements within _have_ changed, we say the collection has been **mutated**.

### Mutating Methods

A [**mutating method**](./mutating1.md#mutating-methods) is one that modifies either it's caller or one of it's arguments during execution. In this case, the actual object the variable references is changed, and the reference remains the same; therefore, the change will be reflected on the object anywhere in the program it is referenced.

Mutating methods are only available to mutable objects.

```ruby
a = "a string object"
b = a
b.upcase!
b                           # => "A STRING OBJECT"
a                           # => "A STRING OBJECT"
a.object_id == b.object_id  # => true
```

( a ) -------> "a string object"

( a ) -------> "a string object"
( b ) ---------------^

( a ) -------> "A STRING OBJECT"
( b ) ---------------^
<!-- Though we affix the method to variable `b`, in fact it is the object `b` references that calls it -->
The object `b` references invokes the destructive method

Above, because both variables `a` and `b` reference the same object, when the mutating method `upcase!` is called on that object, the change will be reflected in both variables. This is a case where the method _mutates the caller_.

## Pointer Arguments

We can also generate methods that are mutating with respect to their _arguments_. This is accomplished when a local variable is passed in to a method as an argument and that method modifies it destructively as above. The change in the object will be reflected throughout the program, despite the fact that methods [have their own discreet scope](./variable_scope1.md#scopes-with-methods).

```ruby
def mutating_method(string)
  p string.object_id
  string.upcase!
end

a = "a string object"
a.object_id               # => 380

mutating_method(a)        # => 380 (output)

p a                       # => "A STRING OBJECT"
```

In the above example, variable `a` is initialized and assigned the string object `"a string object"`, then we invoke `mutating_method` and pass variable `a` as its argument. This means that the object referenced by `a` is assigned to the method parameter `string` ( see [pass by reference](./mutating1.md#object-passing)).

At this point, both the local variable `a` and the method parameter `string` reference the same object. When `upcase!`, a destructive method, is call on that object via the `string` parameter, the change to that object will be reflected wherever it is referenced throughout the program. This is because the `upcase!` returns the same object that is passed to it, and no new object is created.

Therefore, when we pass `a` to the `p` method to output what it references, it will show the modified object `"A STRING OBJECT"`. The fact that the object remains consistent throughout the code is shown by the multiple calls of `object_id`, which always returns the number `380`, indicating that the reference of the object itself has not changed.

Just because a pointer is passed into a method, however, does not guarantee that any modification made within the method will be reflected outside of it. Any instances of [reassignment](#reassignment) within the method will cause the link between the method parameter and the object referenced by the variable in local scope outside the method to be broken.

```ruby
def nothing_changes(string)
  string.upcase
end

a = "a string object"

p nothing_changes(string)   # => "A STRING OBJECT"
p a                         # => "a string object"
```

Above, when the object referenced by local variable `a` is passed to the `nothing_changes` method as an argument, it is still assigned to the method parameter `string` as before. However, this method calls the non-destructive `upcase` method on the `"a string object"`. The return value of `upcase` is a _new_ string object, which causes the bond between `string` and the original object it referenced to be broken.

The value returned by `upcase` is not saved into any variable for later use, but it is returned by the `nothing_changes` method due to Ruby's **implied return**. Therefore, when we output this return value with `p`, we see `"A STRING OBJECT"`. `a`, however, still points to the original object in memory, so when output by `p`, we see `"a string object"`.

## Equal Values

Just because values are equal does not necessarily mean they are the same object in memory.

```ruby
a = "a string object"
b = "a string object"

p a.object_id == b.object_id    # => false
```

This means that any permanent changes made to one will not affect the other.

```ruby
a = "a string object"
b = "a string object"

a.upcase!

p a                       # => "A STRING OBJECT"
p b                       # => "a string object"
```