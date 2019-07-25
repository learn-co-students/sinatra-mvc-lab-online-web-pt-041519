class PigLatinizer
  attr_accessor :text
  
  # def initialize(text)
  #   @text = text.downcase
  # end
  
  def translate_word(something)
    char_array = something.scan /\w/
    if %w(a e i o u y A E I O U Y).include?(char_array[0])
      something+"way"
    else 
      until %w(a e i o u y A E I O U Y).include?(char_array[0])
        char_array.insert(char_array.count-1, char_array.delete_at(0))
        end
        char_array.join+"ay"
    end
  end
  
  def piglatinize(string)
    delimiters = ['. ', "! ", "? ", " ", ", "]
    word_array = string.split(Regexp.union(delimiters))
    pig_array = []
    word_array.each do |word|
       pig_array << translate_word(word)
    end
    pig_array.join(" ")
  end
end