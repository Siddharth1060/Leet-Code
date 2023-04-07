class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        ttl=0
        for i in digits: 
            ttl= ttl*10+ i
        
        plus_one= []
        for i in (str(ttl+1)):
            plus_one.append(int(i))
            
        return(plus_one)