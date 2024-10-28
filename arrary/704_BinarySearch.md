[704](https://leetcode.com/problems/binary-search/)

```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        l, r = 0, len(nums) - 1
    
    # while there are values to compare(while the array is not totally visited)    
        while l <= r:
				# mid
            m = (l + r) // 2
				
				# compare
            if nums[m] < target:
				# l move right, to m+1
                l = m + 1
				
            elif nums[m] > target:
			# right pointer moves left, to m-1
                r = m - 1
				
            # if nums[m] == target
            elif nums[m] == target:
                return m
        return -1
```
