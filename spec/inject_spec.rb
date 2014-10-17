require 'inject'

describe Array do 

	#let(:array){Array.new}
	array = [1, 2]

	context 'if () without an argument' do

		it 'returns the first element of an array' do
			expect(Array.first_instance_of_inject_functionality(array)).to eq (array[0])
		end

		it 'returns the first element of the array + num' do
			expect(Array.second_instance_of_inject_functionality(array)).to eq (array[0] + 5)
		end

	context 'if () with an argument' do

		it 'sum' do
		end

		it 'subtract' do
		end

		it 'multiply' do
		end

		it 'divides' do
		end


	end





end


	
end