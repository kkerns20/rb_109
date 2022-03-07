def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end

def in_array( needles, haystack)
  needles.select {|needle| in_haystack?(needle, haystack)}.sort
end

def in_haystack?( needle, haystack )
  haystack.any? {|hay| hay.include?(needle)}
end
