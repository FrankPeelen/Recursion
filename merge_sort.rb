def merge_sort(arr)
	return arr if arr.size == 1
	first = merge_sort(arr.slice!(0..arr.size / 2 - 1))
	second = merge_sort(arr)
	new_arr = []
	until first.first.nil? || second.first.nil?
		new_arr.push(first.first > second.first ? second.slice!(0) : first.slice!(0))
	end
	until first.first.nil?
		new_arr << first.slice!(0)
	end
	until second.first.nil?
		new_arr << second.slice!(0)
	end
	new_arr
end

puts merge_sort([34, 25, 65, 134, 76, 25, 9, 16665, 1999]).to_s
