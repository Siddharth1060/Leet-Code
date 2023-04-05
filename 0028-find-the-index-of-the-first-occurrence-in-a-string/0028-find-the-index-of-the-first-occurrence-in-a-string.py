class Solution(object):
    def strStr(self, haystack, needle):
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """
        lst=[]
        for i in range(len(haystack)- len(needle)+1):
            for j in range(i,i+len(needle)):
                lst.append(haystack[j])
            if ''.join(lst)==needle:
                return(i)
            else:
                lst=[]
        
        return(-1)