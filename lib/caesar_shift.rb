ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
              "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def moving_shift(s, shift)
    result = []
    s.split('').each_with_index do |letter, index|
      alpha_index = ALPHABET.find_index(letter)
      letter = ALPHABET[alpha_index + shift + index]
      result << letter
      alpha_index += 1
    end
    return result
end
