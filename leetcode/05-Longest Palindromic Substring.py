class Solution(object):
    def longestPalindrome(self, s):
        """
        :type s: str
        :rtype: str
        """
        l = len(s)
        if l < 2:
            return s
        maxlen = 0
        maxleft = 0
        maxright = 0
        i = 0
        while i < l:
            if (l-i) < maxlen//2:     # if the rest part is smaller then maxlen//2, then  no need to test.
                break
            j = i
            k = i
            while (k<l-1) and (s[k+1]==s[j]):  #find the longest repetition
                k = k+1
            i = k+1
            # test the next characters on left and right sides of the longest repetition
            # to find the longest palindromic based on i
            while (j>0) and (k<l-1) and (s[j-1]==s[k+1]):
                j = j-1
                k = k+1
            if k-j+1 > maxlen:  # if the length of new palindromic > maxlen
                maxlen = k-j+1
                maxleft = j
                maxright = k
        return s[maxleft:maxright+1]

