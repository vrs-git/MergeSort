# implementing binary serach algortim

def BinarySearch(n)

	
    #primes = [ '2', '3', '5', '7', '11', '13', '17', '19', '23', '29', '31', '37', '41', '43', '47', '53', '59', '61', '67', '71', '73', '79', '83', '89', '97' ]
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
	min = 0
	max = primes.size-1
	mid = (min+max)/2
	
	
	while(min <= max)
		mid = (min+max)/2
		
		if n == primes[mid]
			return mid
		elsif n < primes[mid]
			max = mid -1
		else n > primes[mid]
			min = mid +1
		end
	end
return -1
end

index= BinarySearch(67)
puts index