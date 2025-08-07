def ceasar_cipher(string, shift)
	string.chars.map {|char| shift_char(char, shift)}.join
end

def shift_char(char, shift)
	case char
	when'A'..'Z'
		get_utf_value(char, shift, 'A'.ord)
	when'a'..'z'
		get_utf_value(char, shift, 'a'.ord)
	else
		char
	end
end

def get_utf_value(char, shift_value, base)
	(((char.ord - base + shift_value) % 26) + base).chr
end

puts ceasar_cipher("What a string!", 5)
