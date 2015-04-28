puts "Enter string to decrypt"
str = gets.chomp

def decrypt_xor(str)
english_words = ['the','be','to','of','and','in','that','have','it','for','not','on','with','he','as','you','do','at','my','ice','baby']
chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
chars.each do |letter|
    #	puts str.to_i(16)
    #    puts letter.unpack("H*")
        code = letter.unpack("H*")[0]*(str.length / 2)
    #	puts code
    #	puts code.to_i(16)
        decoded = str.to_i(16)^code.to_i(16)
   # puts decoded
    string_decoded = [decoded.to_s(16)].pack("H*")
   # puts string_decoded
    english_words.each do |word|
        if (string_decoded.include? word) 
            puts letter
            puts string_decoded
        else
          #  puts 'Shit'
        end
     end
end
end

decrypt_xor(str)
