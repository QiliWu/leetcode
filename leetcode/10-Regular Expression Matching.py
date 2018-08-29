class Solution(object):
    def isMatch(self, s, p):
        """
        :type s: str
        :type p: str
        :rtype: bool
        """
        if not p:  # p = ''
            return not s   # True if s = '', and False if not

        #bool(s): return False if s = ''
        # p[0] should = t[0] or '.', otherwise False
        first_match = bool(s) and p[0] in [s[0],'.']

        #if p[1] = '*'.
        #CASE ONE: '*' means repeat zero times, so p[:2] = ''. Check isMatch(t, p[2:])
        #CASE TWO: '*' means one or more times. first check first_match, second: check t[1:] vs p
        if len(p)>=2 and p[1] == '*':
            return self.isMatch(s, p[2:]) or first_match and self.isMatch(s[1:], p)

        # Finally, check first_match and t[1:] vs p[1:]
        return first_match and self.isMatch(s[1:], p[1:])





