Description
Given a string s, find the length of the longest substring without repeating characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.


```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:

        # init window
        # r will be in the for loop
        l = 0

        # init longest substring length
        longest = 0

        # init an empty set to store unique char
        set_char = set()

        # we will use len(s) later for multiple times
        n = len(s)

        # linear solution, O(n)
        for r in range(0,n):

            # current window is invalid
            # meaning we have duplicated
            while s[r] in set_char:
                set_char.remove(s[l])
                l+=1

        # current window is valid
        # window size
        window = (r-l)+1
        
        # longest substring
        longest = max(longest, len(window))

    return longest
```
