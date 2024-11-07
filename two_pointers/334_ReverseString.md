```python
class Solution(object):
    def reverseString(self, s):
        """
        :type s: List[str]
        :rtype: None Do not return anything, modify s in-place instead.
        """

        # init two pointers
        l,r = 0, len(s) - 1


        # while left and right pointer have not met
        while l<r:

            # swap str at the same time
            s[l],s[r] = s[r],s[l]

            # update pointers
            l,r = l+1, r-1

        return s
```
