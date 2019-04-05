class PigLatinizer
  attr_accessor :string

  def initialize(string = "")
    @string = string
  end

  def piglatinize(string)
    temp = string.split(" ")
    final = ""
    converted = temp.map {|element| piglatinize_word(element)}
    final = converted.join(" ")
    "#{final}"
  end

  def piglatinize_word(string)
    word = string
    first_letter = word[0].downcase
    counter = word.size
    counter2 = 1
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      word[0] = ''
      word += first_letter
      while counter2 < counter
        if ["a", "e", "i", "o", "u"].include?(word[counter2])
          break
        else
          temp = word[counter2]
          word[counter2] = ''
          word += temp
          counter2 += 1
        end
      end
      "#{word}ay"
    end
  end
end
