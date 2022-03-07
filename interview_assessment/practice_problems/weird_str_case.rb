def even_upcase word
  word.split(//).map.with_index { |v,k| k.even? ? v.upcase : v  }.join()
end
def weirdcase string
  string.split(" ").map { |v|  even_upcase(v) }.join(" ")
end
