def translate(word)
	word_list = word.split(" ")
	words = word_list.length
	word_list.each do |x|
		new_word = x.split(//)
		new_word.each do |character|
			if 'aeio'.include? character
				break
			elsif 'u'.include? character
				break unless new_word[-1].include? "q"
				new_word.push(character)
				new_word = new_word[1 ..-1]
			else 
				new_word.push(character)
				new_word = new_word[1 ..-1]
			end
		end
		if words <= 1
			new_word = new_word.join + "ay"	
			word_list.push(new_word)
			word_list = word_list[1 ..-1]
			break
		else
			words -= 1
			new_word = new_word.join + "ay "
			word_list.push(new_word)
			word_list = word_list[1 ..-1]
		end


	end
	word_list.join
end

