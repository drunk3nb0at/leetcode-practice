```
class Solution(object):
    def findContentChildren(self, g, s):
        """
        :type g: List[int]
        :type s: List[int]
        :rtype: int
        """
       
       # 排序饼干
        g.sort(reverse=False)
       # 排序胃口
        s.sort(reverse=False)

        index = 0
    #     # 记录满足的孩子

    #    # 因为要返回满足的孩子的数量，所以用for历遍饼干
        for j in range(len(s)):
            # if g[index]<=s[j] and index < len(g): 
            # 为什么这样写会报错呢？
            
            if index < len(g) and g[index]<=s[j]:
                index += 1 # 移动下标

        return index  # 返回满足的孩子数目

```

问题：
1. 反向排序饼干怎么做？
2. 为什么反着写and左右的条件会报错List Index Out of Range?
