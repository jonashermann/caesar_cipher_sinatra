$num = (0..9).to_a
$m   = ('a'..'z').to_a
$M   = ('A'..'Z').to_a


def caesar_cipher(text, shift)
	letter = text.split('')
	coded_letter = letter.map {|l| encode(l, shift) }
    return coded_letter.join
end
def encode(char, shift)	 
	if $m.include? char
		i = $m.index char
		j = (i + shift) % 26
		return $m[j]
	elsif $M.include? char
	     i = $M.index char
	     j = (i + shift) % 26
	     return  $M[j]
	elsif (char.ord >=48 && char.ord <= 57)     	
         i = $num.index(char.to_i)
         j = (i + shift) % 10
         return $num[j].to_s
    else
     
        return char
    end                         	
end