#write your code here

#addition
def add(num1, num2) 
	if (num1 % 2 == 0) && (num2 % 2 == 0)
		return num1 + num2 
	end	
end

#soustraction
def subtract(num1, num2)
	return num1 - num2
end	

#somme
def sum(array)
	array.inject(0){|sum, num| sum + num}
end	

#multiplication
def multiply(*numbers)
	result = 1
	numbers.each do |number|
		result *= number
	end	
	return result
end	

#exponentielle 
def power(num1, num2)
	return num1**num2
end 

#factorielle
def factorial(range)
    (1..range).inject(1) {|result,element| result * element}
end

