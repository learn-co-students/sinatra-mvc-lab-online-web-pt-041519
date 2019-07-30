class PigLatinizer

  attr_accessor :letters, :words

  def piglatinize(input)
    # user input was 1 word
    if input.split(" ").length == 1
      self.piglatinize_single_word(input)

    # user input was multiple words
    else
      self.words = input.split(" ")
      self.words.map do |word|
        self.piglatinize_single_word(word)
      end.join(" ")
    end
  end

  def piglatinize_single_word(word)
    self.letters = word.split("")
    attach = ["a", "y"]

    if
      self.letters[0].match(/[aeiou]/i)
      attach.unshift("w")
    else
      self.letters.each_with_index do |letter, i|
        if letter.match(/[aeiou]/i)
          attach.unshift(self.letters.slice(0..(i - 1)))
          i.times { self.letters.shift }
          break
        end
      end
    end
    return "#{self.letters.join}#{attach.join}"
  end

end
