class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        x=str(x)
        rev= x[::-1]
        print(x, rev)
        
        if(x == rev):
            return(True)
        else:
            return(False)