class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        
        lst= s.strip().split(' ')
        print(lst)
        return(len(lst[-1]))
