puts "Enter string to decrypt"
str = gets.chomp

def decrypt_xor(str)
english_words = ['the','be','to','of','and','a','in','that','have','I','it','for','not','on','with','he','as','you','do','at']

('a'..'z').each do |letter|
    decoded = str.to_i(16)^letter.to_i(16)
    puts decoded
    string_decoded =  decoded.to_s(32)
    english_words.each do |word|
        if string_decoded.include? word
            puts letter
            puts string_decoded
        else
            puts 'Shit'
        end
     end
end
end

decrypt_xor(str)
