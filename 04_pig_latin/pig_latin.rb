#write your code here

def translate (word)
    
    
    # vowels.include? "a"
    def one_word (word)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
    phonemes = ["sch", "qu",]
    
    if vowels.include?(word[0]) == true
        word + "ay"
    
    else if phonemes.include?(word[0]+word[1]) == true
        word = word.split("")
        2.times do word.delete_at(0) end
        word.insert(0, "qu")
        word[word.length] = word [0]
        word.delete_at(0)
        word = word.join + "ay"

    else if phonemes.include?(word[0]+word[1]+word[2]) == true
        word = word.split("")
        3.times do word.delete_at(0) end
        word.insert(0, "sch")
        word[word.length] = word[0]
        word.delete_at(0)
        word = word.join + "ay"

    else if (consonants.include?(word[0]) == true) && (phonemes.include?(word[1]+word[2]) == true)
        word = word.split("")
        2.times do word.delete_at(1) end
        word.insert(1, "qu")
        word[word.length] = word[0]
        word[word.length] = word[1]
        2.times do word.delete_at(0) end
        word = word.join + "ay"

    
    else if (consonants.include?(word[0]) == true) && (consonants.include?(word[1]) == false)
        word = word.split("")
        word[word.length] = word[0]
        word.delete_at(0)
        word = word.join + "ay"

    else if (consonants.include?(word[0]) == true) && (consonants.include?(word[1]) == true) && (consonants.include?(word[2]) == false)
        word = word.split("")
        word[word.length] = word[0]
        word[word.length] = word[1]
        2.times do word.delete_at(0) end
        word = word.join + "ay"

    else if (consonants.include?(word[0]) == true) && (consonants.include?(word[1]) == true) && (consonants.include?(word[2]) == true)
        word = word.split ("")
        word[word.length] = word[0]
        word[word.length] = word[1]
        word[word.length] = word[2]
        3.times do word.delete_at(0) end
        word = word.join + "ay"
    
    end
    end
    end
end
end
end    
end
end

if word.include?(" ") == false
    word = one_word(word)

else if word.include?(" ") == true
    word = word.split(" ")
    new_word = []
    word.each do |i|
        new_word << one_word(i)
    end

    word = new_word.join(" ")
end
end


end

translate("square")