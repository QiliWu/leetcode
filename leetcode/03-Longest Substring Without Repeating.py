class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        sub=''
        n=0
        for i in s:
            if i not in sub:
                sub=sub+i
                if len(sub)>=n:
                    n=len(sub)
            else:
                m=sub.index(i)
                sub=sub[m+1:]+i
        return n