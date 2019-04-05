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
    binding.pry
    word = string
    first_letter = word[0].downcase
    counter = word.size
    counter2 = 1
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      temp = word.pop()
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
