def reverse?(arr)
  sum = 0
  arr.each do |char|
    sum += char.to_i**3
  end
  
  sum.even?
end

def get_subs(str, sz)
  subs = []
  digits = str.chars
  
  0.step(by: sz, to: digits.size - 1) do |i|
    subs << digits[i, sz]
  end
  
  subs.select { |sub| sub.size == sz }
end

def revrot(num_str, sz)
  return '' if sz <= 0 || num_str.empty? || sz > num_str.size
  get_subs(num_str, sz).map do |sub|
    if reverse?(sub)
      sub.reverse
    else
      first = sub.shift
      sub << first
      sub
    end
  end.flatten.join
end

def revrot(str, sz)
  return '' if sz <= 0
  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    sum = digits.map {|x| x.to_i ** 3 }.inject(:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"
