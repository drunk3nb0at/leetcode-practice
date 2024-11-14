```python
# recursion
class Solution(object):
    def fib(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n<=1:
            return n
        else:
            return self.fib(n - 2) + self.fib(n - 1)

# memorization
class Solution(object):
    def fib(self, n):

				li = [0, 1]
				n = abs(n)
				
				if n < len(li):
						return li[n]
				else:
						for i in range(len(li), n+1):
						sum = li[i-1] + li[i-2]
						li.append(sum)
						return li[n]

```


如果某一问题有很多重叠子问题，使用动态规划是最有效的 https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%8A%A8%E6%80%81%E8%A7%84%E5%88%92%E7%90%86%E8%AE%BA%E5%9F%BA%E7%A1%80.md

**对于动态规划问题，我将拆解为如下五步曲，这五步都搞清楚了，才能说把动态规划真的掌握了！**

1. 确定dp数组（dp table）以及下标的含义
2. 确定递推公式
3. dp数组如何初始化
4. 确定遍历顺序
5. 举例推导dp数组

**找问题的最好方式就是把dp数组打印出来，看看究竟是不是按照自己思路推导的！**
