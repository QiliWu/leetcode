class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """

        abs_x = abs(x)

        
        if len(s) == 1:
            return True

        else:
            for i in range(len(s)//2):
                if s[i] != s[len(s)-i-1]:
                    return False
            return True


num = Solution()

print(num.isPalindrome(11))