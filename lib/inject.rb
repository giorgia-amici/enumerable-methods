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

=begin
(memo=0, &blk)
is the same as passing {|memo, n| memo + n} but in this way we pass a block to a function

array = self.clone
In this way I will keep my original array since in the next line I will shift the first element of the array hence, changing its original content

memo = 0
this is the condition I have when I do not pass any argument to the inject method
in this specific case if memo is == 0, I will take as memo value for the FIRST iteration, memo = self.first, hence the first element of self

array.shift 
will then remove this element from the array because I do not want to iterate through the first element of the array. Without shifting I will have:
	memo(1) + 1(array.first)
	memo(2) + 2(array[1])
	memo(4) + 3(array.last)
	yielding 7 and not 6 because is iterating an extra time.


array.each 
will iterate though each element of the (cloned) array and will yield the block and finally return the value of memo (that will be the value of memo after the last block execution)	

=end


