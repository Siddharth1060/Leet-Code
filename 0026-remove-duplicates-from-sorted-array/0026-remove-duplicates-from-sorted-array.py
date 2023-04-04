class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        d={}
        c=0
        for i in nums[:]:
            if i not in d:
                d[i]=1
                c+=1
            elif d[i]==1:
                nums.pop(nums.index(i))   
        return(c)
                
            