private

def handle_larger_string(remainder, letter, index, result)
  case remainder
  when 0
    result[index] << letter
  when 1
    if index == 0 || index == 1
      result[0] << letter
    else
      result[index -1] << letter
    end
  when 2
    if index == 1 || index == 0
      result[0] << letter
    elsif index == 2 || index == 3
      result[1] << letter
    else
      result[index -2] << letter
    end
  when 3
    if index == 1 || index == 0
      result[0] << letter
    elsif index == 2 || index == 3
      result[1] << letter
    elsif index == 4 || index == 5
      result[2] << letter
    else
      result[3] << letter
    end
  when 4
    if index == 1 || index == 0
      result[0] << letter
    elsif index == 2 || index == 3
      result[1] << letter
    elsif index == 4 || index == 5
      result[2] << letter
    elsif index == 6 || index == 7
      result[3] << letter
    else
      result[4] << letter
    end
  end
end

ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
              "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
public
def moving_shift(s, shift)
    result = [[],[],[],[],[]]
    remainder = s.length % 5
    s.split('').each_with_index do |letter, index|
      alpha_index = ALPHABET.find_index(letter)
      letter = ALPHABET[(alpha_index + shift + index) % 26]
      if s.length <= 5
        result[index] << letter
      else
        handle_larger_string(remainder, letter, index, result)
      end
      alpha_index += 1
    end
    return result.map {|string| string.join('')}
end
