#write your code here
def add one, two
	sum = one + two
end

def subtract one, two
	answer = one - two
end

def sum array
	sum = 0
	array.each do |x|
		sum = sum + x
	end
	return sum
end

def multiply one, two
	answer = one * two
end

def power one, two
	answer = one ** two
end

def factorial number
	answer = 1
	for i in 1..number
		answer = answer * i
	end
	return answer
end
