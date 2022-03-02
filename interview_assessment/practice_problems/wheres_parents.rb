def find_children(string)
  string.chars.sort_by { |char| [char.downcase, char] }.join
end
