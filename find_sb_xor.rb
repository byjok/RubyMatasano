

def decrypt_xor(str)
    english_words = ['the','be','to','of','and','in','that','have','it','for','not','on','with','he','as','you','do','at','my','ice','baby']
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    chars.each do |letter|
        code = letter.unpack("H*")[0]*(str.length / 2)
        decoded = str.to_i(16)^code.to_i(16)
        string_decoded = [decoded.to_s(16)].pack("H*")
            english_words.each do |word|
        	if string_decoded.include? word 
            	    puts letter
            	    puts string_decoded
		    puts str
        	else
          	 #  puts 'Shit'
        	end
         end
    end
end

open("4.txt").each_line { |string| decrypt_xor(string)}
