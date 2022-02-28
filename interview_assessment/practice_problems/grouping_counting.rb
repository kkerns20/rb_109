def get_char_count(string)
  clean_string = string.downcase.delete('^a-z0-9')
  chars = clean_string.chars.uniq.sort

  chars.group_by { |char| clean_string.count(char) }.sort.reverse.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("P%c5Ve6OtTFsh-Y4lnBlpiM5%+beCTdjNiO,nxG.X!jjzp*Jt.7tB^Nt8^VScr.BQ1") == {6=>["t"], 4=>["b", "j", "n"], 3=>["c", "p"], 2=>["5", "e", "i", "l", "o", "s", "v", "x"], 1=>["1", "4", "6", "7", "8", "d", "f", "g", "h", "m", "q", "r", "y", "z"]}
