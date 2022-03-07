def letter_count(str)
  hash = {}
  arr = str.chars
  arr.each do |char|
    hash[char.to_sym] = arr.count(char)
  end
  hash
end
