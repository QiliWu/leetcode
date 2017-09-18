class Solution(object):
    def convert(self, s, numRows):
        """
        :type s: str
        :type numRows: int
        :rtype: str
        """
        if numRows<2:
            return s
        else:
            result = ''
            T = list(range(2*numRows-2))
            for i in range(numRows):
                for p in range(len(s)):  #
                    if p % (2*numRows-2) == T[i] or p % (2*numRows-2) == T[-1*i]:
                        result = result+s[p]
            return result





string = Solution()
print(string.convert('PAYPALISHIRING',3))

