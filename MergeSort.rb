#created by ritika

def Merge(array,p,q,r)
	i = 0
	
	h = p
	j = q+1
	b = [r+1-p]
	
	while h<= q && j <= r
		if array[h] <= array[j]
			b[i] = array[h]
			h = h+1
		else
			b[i] = array[j]
			j = j+1
		end
		i++
	end
	
	if h > q 
		for k in j..r
			b[i] = array[k]
			i ++
		end
	else
		for k in h..q
			b[i] = array[k]
			i ++
		end
	end
end

def MergeSort(array,p,r)
	if p < r
		q = (p +q )
		MergeSort(array,p,q)
		MergeSort(array,q+1,r)
		Merge(array,p,q,r)
	end
end

array = [3, 7, 12, 14, 2, 6, 9, 11]

puts MergeSort(array,0,array.length-1)