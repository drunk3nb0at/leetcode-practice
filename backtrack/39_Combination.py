class Solution(object):
    def backtracking(self, candidates, target, summation, startIndex, path, result):
        if summation > target: # 终止条件1
            # 存放结果
            # return
            return
        if summation == target: # 终止条件2
            result.append(path[:]) # 存放结果
            # return 
            return

        # 横向历遍
        # for (选择：本层集合中元素（树中孩子数量就是集合大小)
        for i in range(startIndex,len(candidates)):
            # 处理节点
            summation += candidates[i]
            path.append(candidates[i])
            # 回溯，撤销处理结果
            self.backtracking(candidates, target, summation, i, path, result)
            summation -= candidates[i] #这里有点儿复杂，不懂
            path.pop()


    def combinationSum(self, candidates, target):
        """
        :type candidates: List[int]
        :type target: int
        :rtype: List[List[int]]
        """
        result = []
        self.backtracking(candidates, target, 0, 0, [], result)
        return result
