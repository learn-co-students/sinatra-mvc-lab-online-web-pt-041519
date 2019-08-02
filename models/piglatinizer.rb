class PigLatinizer


    def piglatinize(text)
        words = text.split(" ")
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        result = words.map do |word|
          if vowels.include?(word[0])
            word + 'way'
          else  
            word = word.gsub("qu", " ")
            word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
            word = word.gsub(" ", "qu")
          end 
        end 
        result.join(" ")
    end 

end 