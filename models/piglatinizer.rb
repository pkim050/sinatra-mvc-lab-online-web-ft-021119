class PigLatinizer
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def convert
    a = @string.split(" ")
    final = ""
    b = a.map {|element| convert2(element)}
    final = b.join(" ")
  end

  def convert2(word)
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
    end
end
