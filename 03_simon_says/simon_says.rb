#write your code here
def echo string
	return string
end

def shout string
	return string.upcase
end

def repeat string, number = nil
	if number == nil
		number = 2
	end
	number = number - 1
	torepeat = " " + string
	repetitions = (torepeat * number)
	return string + repetitions
end

def start_of_word word, number
	array = word.chars
	answer = ""
	for i in 0...number
		answer = answer + array[i]
	end
	return answer
end

def first_word string
	array = string.split(" ")
	return array[0]
end

def titleize string
	array = string.split(" ")
	answer = ""
	for i in 0...array.length
		if i == 0
			array[i] = array[i].capitalize
		else
			array[i] = array[i].capitalize unless (array[i] == "the" or array[i] == "over" or array[i] == "and")
		end
		if i == 0
			answer = answer + array[i]
		else
			answer = answer + " " + array[i]
		end
	end
	return answer
end
