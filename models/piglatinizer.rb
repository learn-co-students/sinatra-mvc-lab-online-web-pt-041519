class PigLatinizer
    attr_reader :text

    # def initialize(text)
    #     @text = text.downcase
    # end 

    def piglatinize(text)
        words = text.split(" ")
        words.map do |word|
            letters = word.split("")
            if letters[0] =~ /[aeiouAEIOU]/
                letters.join("") + "way"
            elsif
                letters[1] !~ /[aeiou]/ && letters[2] !~ /[aeiou]/
                one_two_three = letters.shift(3)
                (letters << one_two_three).flatten
                letters.join("") + "ay"
            elsif
                letters[1] !~ /[aeiou]/ 
                one_two = letters.shift(2)
                (letters << one_two).flatten
                letters.join("") + "ay"
            else
                cons = letters.shift
                letters << cons 
                letters.join("") + "ay"
            end 
        end.join(" ") 
    end 


end 