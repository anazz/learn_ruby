#write your code here
def translate(word)
    array = word.split(" ")
    array.map!{ |word| pig(word)}
    new_word = array.join(" ")
    return new_word
end


def pig(word)
    vowels = ["a","e","i","o","u"]
    if vowels.include? word[0] 
        word = word + "ay"
        return word
    else
        word.each_char do |a|
            if a.include? "q" and word[1] == "u"
                word = word + "qu"
                word = word[2..-1]
            elsif vowels.include? a 
                word = word + "ay"
                return word
            else
                word = word+a
                word = word[1..-1]
            end
        end
        return word + "ay"
    end
end