class PigLatinizer 

    def piglatinize(text)
        arr = text.split(" ")
        arr.map do |e|
            cut = e.match(/\b[^aeiouAEIOU]+/).to_s
            if cut != ""
                e.gsub(/\b[^aeiouAEIOU]+/, "").<<cut.<<"ay"
            else
                e.<<"way"
            end
        end.join(" ")
    end

end