def genKey(start)
    #~ Create array to store sets
	a = Array.new
	
	#~ Generate first set
	b = craft(start[0])
	a.push(b[0]+b[1]+b[2]+b[3])
	
	#~ Generate second set
	b = craft(start[1])
	a.push(b[1]+b[2]+b[3]+b[0])
	
	#~ Generate third set
	b = craft(start[2])
	a.push(b[2]+b[3]+b[0]+b[1])
	
	#~ Generate fourth set
	b = craft(start[3])
	a.push(b[3]+b[0]+b[1]+b[2])
	
	#~ Combine sets into key
	a.join('-')
end

def craft(x)
    #~ Create array to store values
    a = Array.new
    
    #~ Create key to convert decimal values to hex
	b = ('A'..'F').to_a
	
	#~ Read first digit
	if x > 9
		a.push(b[x-10])
	else
		a.push(x)
	end
	
	#~ Generate the second digit
	#~ Check if the digit is even
	#~ If so, add 2 to the value
	#~ If not, subtract 2
	if x%2==0
		x=x+2
	else
		x=x-2
	end
	
	#~ Loop the value so it stays between 0 and 15
	while x > 15
		x=x-15
	end
	while x < 0
		x=x+15
	end
	
	#~ Add value to array
	#~ If the value is greater than 10 it is converted to a hex digit
	if x > 9
		a.push(b[x-10])
	else
		a.push(x)
	end
	
	#~ Generate third digit
	#~ Determine if the digit is prime
	y = 0
	1.upto(x) do |n|
		if x%n != 0
			next
		end
		y += 1
	end
	
	#~ If so, multiply by 4
	#~ If not, divide by 4
	if y==2	
		x=x*4
	else
		x=x/4
	end
	
	#~ Loop the value so it stays between 0 and 15
	while x > 15
		x=x-15
	end
	while x < 0
		x=x+15
	end
	
	#~ Add value to array
	#~ If the value is greater than 10 it is converted to a hex digit
	if x > 9
		a.push(b[x-10])
	else
		a.push(x)
	end
	
	#~ Generate fourth digit
	#~ Originally this was to determine if 15 was divisible by the digit
	#~ But I changed it since I figured that would be to difficult to check
	#~ Now it tests if the number is even or 0
	
	#~ If so, add 8
	#~ If not, subtract 8
	if x == 0 || 16 % x == 0
		x=x+8
	else
		x=x-8
	end

	#~ Loop the value so it stays between 0 and 15
	while x > 15
		x=x-15
	end
	while x < 0
		x=x+15
	end
	
	#~ Add value to array
	#~ If the value is greater than 10 it is converted to a hex digit
	if x > 9
		a.push(b[x-10])
	else
		a.push(x)
	end
	
    #~ Combine all the values in the array into a 4 digit hex set
    #~ Return the value to be added with the other 3 sets and make the key
	a.join
end
