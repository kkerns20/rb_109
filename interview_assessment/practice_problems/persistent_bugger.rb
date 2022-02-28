=begin
----------------------------ALGO-----------------------------------------
==> Count the number of a times the given integer needs to be split into individual digits and multiplied together until the result is a single-digit integer. 

-- method --> persistence(integer) --> integer
  -initialize 'current' to 'integer'
  -initialize 'count' to 0
  -loop 
    -break out of loop if 'current' is a single digit
    -increment counter by 1
    -initialize 'temp' to 1
    -split current into digits and multiply them together, set to 'current'
  -return count
=end

def persistence(given_num)
  current_num = given_num
  count = 0
  
  loop do 
    break if current_num.to_s.size <= 1
      count += 1
      temp = 1
      current_num.digits.each { |num| temp *= num }
      current_num = temp
  end
  count
end

def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.digits.reduce(&:*))
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
