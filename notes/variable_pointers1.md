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

( a ) -------> | Array Object | obj_id == 260 | String Object |
               | ------------ | ------------- |
               |     a[0]     |      280      |
               |     a[1]     |      300      |
               |     a[2]     |      320      |



### Mutating Methods

## Pointer Arguments

## Equal Values

