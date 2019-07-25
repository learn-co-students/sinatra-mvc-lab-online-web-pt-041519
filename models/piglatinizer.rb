
require 'pry'

class PigLatinizer

  def piglatinize(user_input)
    piglatinize_word(user_input)
    user_input.split(" ").count > 1 ?  piglatinize_sentence(user_input) : piglatinize_word(user_input)
  end


  def piglatinize_word(word)
    if word[0].match(/[aAeEiIoOuU]/)
       word = word + "w"
    else
      letter_array = word.split("")
      con = []
      while !letter_array.first.match(/[aAeEiIoOuU]/)
        con << letter_array.shift
      end
      word = letter_array.join("") + con.join("")
    end
    word + "ay"
  end

  def piglatinize_sentence(sentence)
    word_array = sentence.split(" ")
    new_word_array = []
    word_array.each {|word| new_word_array << piglatinize_word(word)}
    new_word_array.join(" ")
  end


end
