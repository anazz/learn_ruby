#write your code here
def echo(string) 
	return string
end
	
def shout(string) 
	return string.upcase
end

def repeat(word,number=2)
    array = [word]
    array *= number
    return array.join(" ")
end

def start_of_word(word, number=1)
	return word[0, number]
end	

def first_word(string)
	words = string.split(" ")
	return words [0]
end	

def titleize(text)
    array = text.split(" ")
    array.each {|word|
        if word=="and" or word=="the" or word=="over" or word=="or" or word ==" an"
        word.downcase!
        else word.capitalize!
        end
        }
    array[0].capitalize!
    array.join(" ")
end
  
