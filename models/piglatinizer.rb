class PigLatinizer 
    attr_reader :words

    def initialize
        @words = words
    end

    def piglatinize(words)
        split_text = words.split(" ")
        changed_text = split_text.map{|word| piglatinize_word(word)}
        changed_text.join(" ")
    end

    def piglatinize_word(words)
        #split = word.split("")
        first_letter = words[0].downcase      
        if first_letter.scan(/[aeoui]/).any?
            "#{words}way"
        else
            consonants = []
            consonants << words[0]
            if words[1].scan(/[aeoui]/).any? == false
                consonants << words[1]
                if words[2].scan(/[aeoui]/).any? == false
                    consonants << words[2]
                end
            end
         "#{words[consonants.length..-1]+ consonants.join + 'ay'}"
     end
    end
end
