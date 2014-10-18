class Array

	def self.first_instance_of_inject_functionality(array)
		return array[0]
	end

	def self.second_instance_of_inject_functionality(array)
		return array[0] + 5
	end






	def inject_iterators(memo=0,&blk)
		array = self.clone
		if memo == 0
			memo = self.first
			array.shift
		end
		array.each do |x|
			memo = yield memo,x
		end
		memo
	end


end






# def new_inj(memo=0,&blk)
# 	array = self.clone
# 	if memo == 0
# 		memo = self.first
# 		array.shift
# 	end
# 		array.each do |x|
# 			memo = yield memo, x
# 		end
# 		memo
# 	end