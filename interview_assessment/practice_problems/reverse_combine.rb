def reverse_and_combine_text(s)
  return s if s.split(' ').size == 1
  words = s.split(' ')
  words = words.map { |word| word.reverse }
  words = words.each_slice(2).to_a.map { |slice| slice.join}.join(' ')
  reverse_and_combine_text(words)
end
