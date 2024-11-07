# collections.Counter -> dict subclass for counting hashable objects
from collections import Counter

class Solution(object):
    def isAnagram(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
    # if len(s)!= len(t) then its not valid

    if len(s) != len(t):
        return False
    
    # create a dictionary to sotre letter and count
    # key -> letter, count -> value
    # use built in function Counter

    # for s and t

    s_map = Counter(s)
    t_map = Counter(t)

    # for i in s_map.keys:
    
    for letter in s_map:
        if s_map[letter] != t_map[letter]:
            return False
    
    return True

# - time complexity: O(s+t) → O(s+s) → O(s)
# - space complexity: O(s) → O(26) → O(1)

#一般哈希表都是用来快速判断一个元素是否出现集合里。但是哈希法也是**牺牲了空间换取了时间**，因为我们要使用额外的数组，set或者是map来存放数据，才能实现快速的查找。
# 如果在做面试题目的时候遇到需要判断一个元素是否出现过的场景也应该第一时间想到哈希法！
