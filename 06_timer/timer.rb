class Timer
  	
  	attr_accessor :seconds
  	attr_accessor :hours
  	attr_accessor :minutes


  	def initialize
  		@seconds = 0
  		@hours = 0
  		@minutes = 0
  	end



  	def time_string

  		fullConvert



  		return (pad @hours) + ":" + (pad @minutes) + ":" + (pad @seconds)
  	end




  	private

	def pad number

		if number > 9
			return number.to_s
		else
			return "0" + number.to_s
		end
	end

	def convert number

		count = 0
		
		while number > 59
			number  = number - 60
			count = count + 1
		end


		return count

	end

	def fullConvert
		minutes = convert @seconds
  		@minutes = @minutes + minutes
  		@seconds = @seconds - (minutes * 60)

  		hours = convert @minutes
  		@hours = @hours + hours
  		@minutes = @minutes - (hours * 60)


	end


end






