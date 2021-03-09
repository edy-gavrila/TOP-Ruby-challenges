def caesar_cipher(str, offset)
    strArr = str.split("")
    result = strArr.map do |char|
        ascii_code = char.ord 
        offset_code = ascii_code + offset

        if (ascii_code < 65) || ((ascii_code > 90) &&(ascii_code < 97)) || (ascii_code > 122)
            offset_code = ascii_code
        end

        

     #check for lowercase code range
     if ascii_code.between?(97,122)
        if offset_code > 122 
            offset_code = 96 + offset_code - 122
        end

     end

     ##check for uppercase code range
     if ascii_code.between?(65,90)
        if offset_code > 89
            offset_code = 64 + offset_code - 90
        end
    end    
    
      offset_code.chr
end
result.join("")
end

p caesar_cipher("What a string!", 5)