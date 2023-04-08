class Solution(object):
    def climbStairs(self, n):
        """
        :type n: int
        :rtype: int
        """
        a=1
        b=1
        for i in range(n):
            print(a,b)
            a,b= b,a+b
            print(a,b)
        return a
       