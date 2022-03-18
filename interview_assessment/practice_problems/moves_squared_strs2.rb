def vert_mirror(strng)
  strng.split("\n").map(&:reverse).join("\n")
end

def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end

def oper(fct, s) 
  fct.call(s)
end

def rot(s)
  s = vert_mirror(s)
  hor_mirror(s)
end

def selfie_and_rot(s)
  arr = s.split("\n").map do |x|
    "#{x}#{x.reverse}"
  end
  (arr + arr.reverse).join("\n")
end



s = "abcd\nefgh\nijkl\nmnop"

p rot(s)
p selfie_and_rot(s)
