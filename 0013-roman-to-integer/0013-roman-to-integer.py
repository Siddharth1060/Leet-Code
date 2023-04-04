class Solution(object):
    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        # ones={I:1,II:2,III:3,IV:4,V:5,VI:6,VII:7,VIII:8,IX:9}
        # tens={X:10,XL:40,L:50,XC:90}
        # hundreds={C:100,CD:400, D:500,CM:900}
        # thousands={M:1000}
        d={'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
        sum=0
        for i in range(len(s)):
            if ((i+1)< len(s)) and (d[s[i]] < d[s[i+1]]):
                sum-=d[s[i]]
            else:
                sum+=d[s[i]]
        return(sum)
        
   
    