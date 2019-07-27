require "pry"

class PigLatinizer
  
  def piglatinize(text)
    text.split(" ").length == 1 ? piglatinize_word(text) : piglatinize_sentence(text)
  end

  def consonant?(first_letter)
    first_letter.match(/[^aeiouAEIOU]/)
  end

  def piglatinize_word(word)
    st = word.split('')
    if !consonant?(st[0])
      word + "way"
    elsif consonant?(st[0]) && consonant?(st[1]) && consonant?(st[2])
      three_consonants = st[0] + st[1] + st[2] + "ay"
      st.push(three_consonants).shift(3)
      st.join('')
    elsif consonant?(st[0]) && consonant?(st[1])
      two_consonants = st[0] + st[1] + "ay"
      st.push(two_consonants).shift(2)
      st.join('')
    else
      consonant = st[0] + "ay"
      st.push(consonant).shift
      st.join('')
    end
  end

def piglatinize_sentence(sentence)
  sentence.split.map{|word| piglatinize_word(word)}.join(" ")
end

end
