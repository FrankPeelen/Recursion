def fibs(num)
	result = num > 1 ? [1, 1] : [1]
	for i in 3..num
		result[i - 1] = result[i - 3] + result[i - 2]
	end
	result
end

def fibs_rec(num)
	return [1] if num == 1
	return [1, 1] if num == 2
	arr = fibs_rec(num - 1)
	return arr << arr[num - 3] + arr[num - 2]
end

puts fibs(10).to_s
puts fibs_rec(10).to_s