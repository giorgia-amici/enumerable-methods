
class Array


# def first_instance_of_inject_functionality(array)
# 	return array[0]
# end


#array = [1,2]

# def new_inject
# 	memo = 0
# 	self.each do |x|
# 		memo = yield(memo + x)
# 	end
# 	memo
# end


# # def new_inject2
# # 	@array = [1,2,3]
# # 	memo = @array[0]
# # 	@array.each do |x|
# # 		memo = yield(memo + x)
# # 	end
# # 	return memo
# # 	@array
# # end


def new_inj(array)
	memo = 0
	array.each do |x|
		memo = memo + x
	end
	return memo
end

#array.new_inject


def self.new_inj2
	memo = 0
	self.each do |x|
		memo = memo + x
	end
	return memo
end


end

