class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        lst=[]
        
        for i in s:
            if i in('(','[','{'):
                lst.append(i)
            elif len(lst)==0:
                return(False)
            elif i ==')' and lst[-1]=='(':
                lst.pop()
            elif i==']' and lst[-1]=='[':
                lst.pop()
            elif i=='}' and lst[-1]=='{':
                lst.pop()
            else:
                return(False)
        if len(lst)==0:
            return(True)
                
            