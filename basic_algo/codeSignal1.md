> You are given an array `numbers`, and your task is to check consecutive triples `(a, b, c)` for being a "zigzag". A triple is a zigzag if either:
> 
> - $a<b>c$  (the middle number is greater than both its neighbors), or
> - $a>b<c$ (the middle number is smaller than both its neighbors).
> 
> The result should be an array where:
> 
> - Each element is `1` if the corresponding triple is a zigzag.
> - Each element is `0` if the corresponding triple is not a zigzag.
> 
> Approach:
> 
> 1. **Loop through the array**
> 2. **Check the zigzag condition**
> 3. **Return the result array**


```python

def solution(numbers):

	# init list
	bool_list = []
	
	# loop through array
	# consecutive comparison
	
	for i in range(0,len(numbers)-2):
	
			# sliding window of three
			# put a b c together for simplicity
			
			a,b,c = numbers[i], numbers[i+1], numbers[i+2]
			
			# conditional logic
			if a<b>c or a>b<c:
					bool_list.append(1)
					
			else:
					bool_list.append(0)
					
					
	return bool_list
```
