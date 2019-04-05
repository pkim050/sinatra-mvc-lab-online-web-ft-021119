class PigLatinizer
  attr_accessor :string

  def initialize(string = "")
    @string = string
  end

  def convert_
    temp = @string.split(" ")
    final = ""
    converted = temp.map {|element| convert2(element)}
    final = converted.join(" ")
    "#{final}"
  end

  def convert_word
    word = @string
    first_letter = word[0].downcase
    counter = word.size
    counter2 = 1
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      temp = pop()
      word.push(temp)
      while counter2 < counter
        break if ["a", "e", "i", "o", "u"].include?(word[counter2])
        temp = pop()
        word.push(temp)
        counter2 += 1
      end
      "#{word}ay"
    end
  end
end
