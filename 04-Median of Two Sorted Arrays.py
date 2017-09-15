class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: float
        """
        total=nums1+nums2
        total.sort()
        n=len(total)
        if n%2==0:
            median=(total[n/2-1]+total[n/2])/2.0
        else:
            median=total[(n-1)/2]
        return median