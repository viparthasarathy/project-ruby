class Book
	attr_accessor :title
	
	def title= (title_name)
		word_list = title_name.split(" ")
		word_list[0].capitalize!
		bad_words = ['the', 'a', 'an', 'and', 'in', 'of', 'but', 'so', 'nor', 'or']
		word_list.each do |word|
			word.capitalize! unless bad_words.include? word
		end
		@title = word_list.join(" ")
	end

end