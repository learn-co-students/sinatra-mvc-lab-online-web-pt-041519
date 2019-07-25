class PigLatinizer 

    attr_accessor :text


    def pigtext(word) 
        @pigtext = []
        @pigtext= word.split("")
        if @pigtext[0].match?(/[aeiouAEIOU]/)
            @pigtext[0] = @pigtext[0]
            @pigtext << "way"
            @pigtext = @pigtext.join("").to_s
        else
            @first = word.split(/[aeiouAEIOU]/)[0]  
            @pigtext<< @first
            @pigtext << "ay"
            @pigtext = @pigtext.join("").to_s
            @pigtext= @pigtext.sub("#{@first}", "")
        end      
        @pigtext
    end    

    def piglatinize(text) 
        @pigphrase= text.split(" ")
        @pigtext=@pigphrase.map do |word|
            self.pigtext(word)
        end 
        @pigtext.join(" ")        
    end    

end    