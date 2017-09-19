class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        L=list(str(abs(x)))
        if abs(x)>(2**31):
            return 0
        elif len(L)<=1:
            return x
        else:
            L.reverse()
            rev_x = int(''.join(L))
            if rev_x >(2**31):
                return 0
            elif x>0:
                return rev_x
            else:
                return (-1*rev_x)