class Array

def collect_iterator(&blk)
	new_array = []
	result = 0
	self.each do |x|
		result = yield x
		new_array << result
	end
	new_array
end




end