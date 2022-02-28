def scramble_one_word(word)
  if word.size <= 3 
    word
  else 
    word = word.chars
    first = word.delete_at(0)
    last = word.delete_at(-1)
    word = word.sort.join
    word = first + word + last
  end
end

def scramble_words(str)
  str.split(' ').map do |word|

    if word.match?(/[-.,']/)
      punc_index = word.index(/[,.'-]/)
      punc = word.chars.delete_at(punc_index)
      word = word.delete(punc)
    end
    
    word = scramble_one_word(word)
    
    if punc_index 
      word.insert(punc_index, punc)
    else
      word
    end
  end.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words( == "ebiiilqruum oiiimpsttc it's, is faee-irrsttr. cadeorws baabdggiinnorn. aadeiilntuvn saaeennprtuud"
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
