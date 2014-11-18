def add (n1, n2)
	result = n1.to_i + n2.to_i
end

def subtract (n1, n2)
	result = n1.to_i - n2.to_i
end

def sum (array)
	result = 0
	array.each do |x|
		result += x.to_i
	end
	result
end
