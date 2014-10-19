

factorial(x){
	return  1 if x == 1
	puts "#{x}"
	factorial(x-1) * x
}

factorial(x){
	return  1 if x == 1
	puts "#{x} and the fun #{factorial(x-1)}"
	factorial(x-1) * x
}
