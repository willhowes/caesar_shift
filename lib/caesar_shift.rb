ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
              "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def moving_shift(s, shift)
    result = [[],[],[],[],[]]
    s.split('').each_with_index do |letter, index|
      alpha_index = ALPHABET.find_index(letter)
      letter = ALPHABET[alpha_index + shift + index]
      if s.length > 5
        if index == 1 || index == 0
        result[0] << letter
        else
          result[index -1] << letter
        end
      else
        result[index] << letter
      end
      alpha_index += 1
    end
    result.reject!(&:empty?)
    return result.map {|string| string.join('')}
end
