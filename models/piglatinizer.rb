class PigLatinizer 
    
    def initialize
    
    end

    def piglatinize(text)
        if text.length < 2
            translate_single_letter_word(text)
        else
            a = text.split(" ")
            b = a.map{|w| translate_word(w)}
            b.join(" ")
        end
    end
    def translate_single_letter_word(word)
        first_letter = word[0].downcase
        vowels = ["a", "e", "i", "o", "u"]
        if vowels.include?(first_letter)
            #binding.pry
            return "#{word}way"
        end
    end

    def translate_word(word)
        first_letter = word[0].downcase
        vowels = ["a", "e", "i", "o", "u"]
        if vowels.include?(first_letter)
            return "#{word}way"
        else
            consonants = []
            consonants << word[0]
            if !vowels.include?(word[1])
                consonants << word[1]
                if
                    !vowels.include?(word[2])
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
        

    end

end