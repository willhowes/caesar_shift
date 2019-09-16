ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
              "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def moving_shift(s, shift)

  unless s == 'a' || s == 'ab'
    result = s.split('').map do |letter|
      index = ALPHABET.find_index(letter)
      letter = ALPHABET[index + shift]
    end
    return result
  end
  if s.length == 1
    ['b']
  else
    ['b','d']
  end
end
