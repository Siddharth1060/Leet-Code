class Solution(object):
    def mySqrt(self, x):
        """
        :type x: int            144 0---72--144
        :rtype: int
        """
        l,r = 0, x             
        
        if x==1:
            return 1
        else:
            while(l<=r):
                mid = l+ (r-l)//2
                if (mid*mid) <= x < (mid+1)**2:
                    return(mid)
                elif x < mid*mid:
                    r = mid - 1
                else:
                    l=mid + 1
            return mid
       
        
            
            

#         if x== 0:
#             return(0)
#         elif x==1:
#             return 1
#         else:
#             for i in range(1, int(x/2)):
#                 if (i*i)<= x and ((i+1)*(i+1)) > x:
#                     print(i)
#                     return (i)
           
         
    
    