require 'base64'

puts "Enter hex string"

hexData = gets.chomp

def convert_hex_to_base64(hexData)

base64_data = [[hexData].pack("H*")].pack("m0")

return base64_data
end


puts convert_hex_to_base64(hexData)