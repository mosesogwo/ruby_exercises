#write your code here

    def echo (voice)
       voice
    end

    def shout (voice)
        voice.upcase
    end

    def repeat (voice, n=2)
        "#{voice} " * (n-1) + "#{voice}"
    end

    def start_of_word (word, n=1)    
        if n == 1
            word[n-1]
        else
            word[0...n]
        end
    end

    def first_word (words)
        end_of_word = words.index(" ")
        words[0...end_of_word]
    end

    def titleize (words)
        words = words.split(" ")
        little_words = ["a", "an", "and", "the", "over"]
        new_words = []
        words.each do |i|
            if (words.length == 1) || ((words.length > 1) && (little_words.include?(i) == false))
                new_words << i.capitalize
            else if (words.length > 1) && (little_words.include?(i) == true)
                    new_words << i
            end
            end
        end

        new_words.first.capitalize!
        new_words.join (" ")
    end
