* RB101-109 Mock Assessment
** Question 1
#+begin_src ruby :results output :exports both
a = 10

while true do
  a = 5
  break
end

puts a
#+end_src

** Question 2
#+begin_src ruby :results output :session
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
#+end_src

** Question 3
#+BEGIN_SRC ruby :results output :exports both
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
#+END_SRC

** Question 4
#+begin_src ruby :results output :exports both
def amethod(param)
  param += " universe"
  param << " world"
end

str = "hello"
amethod(str)

p(str)
#+end_src

** Question 5
#+begin_src ruby :results output :exports both
def test(str)
  str += '?'
  str.downcase!
end

test_str = "Written Assessment"
test(test_str)

puts test_str
#+end_src

** Question 6
#+begin_src ruby :results output :exports both
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
#+end_src

** Question 7
#+begin_src ruby :results output :exports both
animal = `dog`

loop do |animal|
  animal = "cat"
  break
end

puts animal
#+end_src

** Question 8
#+begin_src ruby :results output :exports both
animal = "dog"

loop do |animal|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var
#+end_src

** Question 9
#+begin_src ruby :results output :session
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
#+end_src

** Question 10
#+begin_src ruby :results output :exports both
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
#+end_src

** Question 11
#+begin_src ruby :results output :exports both
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
#+end_src

** Question 12
#+BEGIN_SRC ruby :results output :exports both
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
#+END_SRC

** Question 13
#+BEGIN_SRC ruby :results output :exports both
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
#+END_SRC

** Question 14
#+BEGIN_SRC ruby :results output :exports both
a = 7
array = \[1, 2, 3]

array.each do |element|
  a = element
end

puts a
#+END_SRC

** Question 15
#+BEGIN_SRC ruby
array = \[1, 2, 3]

array.each do |element|
  a = element
end

puts a
#+END_SRC

** Question 16
#+BEGIN_SRC ruby :results output :exports both
a = 7
array = \[1, 2, 3]

array.each do |a|
  a += 1
end

puts a
#+END_SRC

** Question 17
#+BEGIN_SRC ruby :results output :exports both
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
#+END_SRC

** Question 18
#+begin_src ruby :results output :exports both
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
#+end_src

** Question 19
#+begin_src ruby :results output :exports both
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
#+end_src

** Question 20
#+begin_src ruby :results output :exports both
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
#+end_src

** Question 21
#+begin_src ruby :results output :exports both
[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end
#+end_src
