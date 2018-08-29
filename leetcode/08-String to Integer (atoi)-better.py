#too slow

class Solution(object):
    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        new_str = str.strip()
        if new_str == '':
            return 0

        ls = list(new_str)

        sign = -1 if ls[0]=='-' else 1
        if ls[0] in ['-','+']:
            del ls[0]

        ret, i = 0, 0
        while i < len(ls) and ls[i].isdigit():
            ret = ret*10 + int(ls[i])
            i=i+1
        return max(-2**31,min(sign*ret, 2**31-1))



test = Solution()
print(test.myAtoi('-2147483648'))