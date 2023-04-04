class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        x=str(x)
        rev= x[::-1]
        if x<0:
            return(False)
        
        elif(x == rev):
            return(True)
        else:
            return(False)