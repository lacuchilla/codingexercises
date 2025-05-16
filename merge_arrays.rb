def merge_arrays(arr1, arr2)
	result = []
	p1 = 0
	p2 = 0

	while p1 <= arr1.length - 1 || p2 <= arr2.length - 1
		e1 = p1 <= arr1.length ? arr1[p1] : nil
		e2 = p2 <= arr2.length ? arr2[p2] : nil

		smallest = !e1.nil? && !e2.nil? ? [e1, e2].min : [e1, e2].compact[0]
		result.push(smallest)

		if !e1.nil? && !e2.nil?
			e1 < e2 ? p1 += 1 : p2 += 1
		else
			p1 += 1 if !e1.nil? && p1 <= arr1.length - 1 		
			p2 += 1 if !e2.nil? && p2 <= arr2.length - 1 
		end

	end

	puts result.inspect
end

a1 = [1, 3, 4, 5, 6]
a2 = [2, 3, 4, 7, 8, 9]

merge_arrays(a1, a2)

# [1, 2, 3, 3, 4, 4, 5, 6, 7, 8, 9]
