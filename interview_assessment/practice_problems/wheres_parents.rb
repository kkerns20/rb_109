def find_children(string)
  string.chars.sort_by { |char| [char.downcase, char] }.join
end

def find_child(str)
  ('A'..'Z').to_a.map.with_object([]) do |char, arr|
    if str.include?(char)
      arr << char << char.downcase *
        str.count(char.downcase)
    end
  end.join
end
