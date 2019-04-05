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
    actual_first = word[0]
    counter = word.size
    counter2 = 1
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      word[0] = ''
      word += actual_first
      while counter2 < counter
        #binding.pry
        if ["a", "e", "i", "o", "u"].include?(word[0])
          break
        else
          temp = word[0]
          word[0] = ''
          word += temp
          counter2 += 1
        end
      end
      "#{word}ay"
    end
  end
end
