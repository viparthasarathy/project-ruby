def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n=2)
	(string + " ") * (n-1) + string
end

def start_of_word(word, length)
	word[0, length]
end

def first_word(string)
	first = string.split(" ")
	first[0]
end

def titleize(string)
	words = string.split(" ")
	words[0].capitalize!
	words.each do |word| 
		if word != "and" && word != "or" && word != "but" && word != "if" && word != "over" && word != "the" && word != "a" && word != "an"
			word.capitalize!
		end
	end
	words.join(" ")
end