class Book

	attr_reader :title

	def title=(str)
		words = str.split(" ")

		for i in 0...words.length

			if i > 0
				words[i] = words[i].capitalize unless words[i] == "and" or words[i] == "in" or words[i] == "of" or words[i] == "the" or words[i] == "a" or words[i] == "an"
			else
				words[i] = words[i].capitalize
			end


		end



		@title = words.join(" ")
	end

end


# Title should have every word capitalized except "the, a, an, conjunctions like and, prepositions like in/of" (unless it is the first word, then capitlize)
