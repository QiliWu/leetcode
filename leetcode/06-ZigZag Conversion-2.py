class Solution(object):
    def convert(self, s, numRows):
        """
        :type s: str
        :type numRows: int
        :rtype: str
        """
        if len(s) < 2 or numRows < 2:
            return s
        else:
            L = list(s)
            n = 2 * numRows - 2
            m = len(s) // n
            t = len(s) % n
            D = {}
            for i in range(m):
                T = L[(n * i):n * (i + 1)]
                D[i] = [T[0]]
                for j in range(1, numRows - 1):
                    D[i].append(T[j] + T[-1 * j])
                D[i].append(T[numRows - 1])
            rest = L[n * m:] + [''] * (n - t)
            D[m] = [rest[0]]
            for k in range(1, numRows - 1):
                D[m].append(rest[k] + rest[-1 * k])
            D[m].append(rest[numRows - 1])

            result = ''

            for p in range(numRows):
                for q in range(m + 1):
                    result = result + D[q][p]
            return result


string = Solution()
print(string.convert('PAYPALISHIRING',3))

