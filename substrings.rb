
def substrings(phrase,dictionary)
    dictionary.reduce(Hash.new(0)) do |result,dict_word|
        phrase_words=phrase.split(" ")
        phrase_words.each do |phrase_word|
            if phrase_word.include?(dict_word)
                result[dict_word]+=1
            end
        end
        result
    end
end

dictionary=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word="Howdy partner, sit down! How's it going?"

p substrings(word,dictionary)
