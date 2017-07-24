
# Split a string into multiple words and do the following:
# If a word begins with a vowel, add "ay" to it
# If a word begins with a consonant, move all the consonants until a vowel to the end of the word and add "ay" to it, except in the case of "qu"


#This function translates a string of words into piglatin
def translate string

	#This splits the string into an array of words
	words = string.split(" ")
	
	#Goes through each word in array words
	for i in 0...words.length

		#This splits each word into an array of characters
		characters = words[i].chars

		#If a word begins with a vowel, add "ay" to the end of the word
		if isVowel characters[0]

			characters.push("a", "y")
			words[i] = characters.join("")

		#If a word does not begin with a vowel...
		else

			#While the first character is not a vowel, move it to the back of the word
			while !(isVowel characters[0])

				#If the first character is a "q,"
				if characters[0] == "q"

					#and the next character is a "u," push both the "qu" to the end
					if characters[1] == "u"

						consonant = characters.shift
						characters.push(consonant)
						u = characters.shift
						characters.push(u)

					end

				#Otherwise, just push the first letter to the end
				else

					consonant = characters.shift
					characters.push(consonant)

				end

			end

			#Then add "ay" to the end of the word
			characters.push("a", "y")
			words[i] = characters.join("")

		end
		
	end

	#Joins together all the words with a space in between them and returns the modified string as an answer
	answer = words.join(" ")
	return answer

end


#This function determines if a character is a vowel
def isVowel character
	c = character.downcase
	if c == "a" or c == "e" or c == "i" or c == "o" or c == "u"
		return true
	else
		return false
	end
end


#Testing Zone
translate "what"