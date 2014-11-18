class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		time = @seconds
		minutes = time/60
		hours = minutes/60
		time = time % 60
		minutes = minutes % 60
		if time < 10
			time = "0" + time.to_s
		else
			time = time.to_s
		end
		if minutes < 10
			minutes = "0" + minutes.to_s
		else
			minutes = minutes.to_s
		end
		if hours < 10
			hours = "0" + hours.to_s
		else
			hours = hours.to_s
		end
		hours.to_s + ":" + minutes.to_s + ":" + time.to_s
	end

end

