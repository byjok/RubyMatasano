
puts "Enter first string for Xor"
str1 = gets.chomp
puts "Enter second string"
str2= gets.chomp

def fixed_xor(str1,str2)
	puts str1.to_i(16)
	puts str2.to_i(16) 
	res = (str1.to_i(16)^str2.to_i(16)).to_s(16)
	
	return res
end

puts fixed_xor(str1,str2)
