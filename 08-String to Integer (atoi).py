#too slow

class Solution(object):
    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        new_str = str.strip()
        INT_MAX = 2147483647
        INT_MIN =-2147483648
        if new_str =='':
            return 0
        elif new_str[0] not in ['-','+'] and not new_str[0].isdigit():
            return 0
        else:
            r = new_str[0]
            for i in range(1,len(new_str)):
                try:
                    s=int(new_str[i])
                    r = r + new_str[i]
                except ValueError:
                    r = r
                    break
        if r in ['+','-']:
            return 0
        else:
            result = int(r)
            if result > INT_MAX:
                return INT_MAX
            elif result < INT_MIN:
                return INT_MIN
            else:
                return result


test = Solution()
print(test.myAtoi('-2147483648'))