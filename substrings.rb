dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, dictionary)
    res = {}
    wordArray = word.split(" ")
    
    wordArray.each do |word|
      dictionary.each do |substr| 
        i=0
        currWord = word.clone.downcase
        while currWord.include?(substr.downcase)
            i+=1
            currWord.slice!(substr.downcase)
           
        end   
        if i > 0
            if res[substr]
                res[substr] += i
            else
                res[substr] = i
        end    
      end  
    end
end
    p res
end

substrings("Howdy partner, sit down! How's it going?", dictionary)