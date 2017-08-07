import math


def get_Median(arr1, start1, end1, arr2, start2, end2):
    if ( end1 - start1 == 1 & end2 - start2 == 1 ):
        return ( max(arr1[start1], arr2[start2]) + min(arr1[end1], arr2[end2]) ) / 2 
    median1Index = math.floor((start1 + end1 ) / 2)
    median2Index = math.floor((start2 + end2 ) / 2)
    median1 = arr1[median1Index]
    median2 = arr2[median2Index]

    if ( median1 == median2 ):
        return median1

    if median1 < median2:
        start1 = median1Index
    if end2 - start2 > 1: 
      end2 = median2Index
    else: 
        start2 = median2Index
    if end1 - start1 > 1:  
      end1 = median1Index
    return get_Median(arr1, start1, end1, arr2, start2, end2)




A = [1, 2, 3, 4, 4]
B = [6, 9, 10, 11, 15]
print(get_Median(A, 0, 4, B, 0, 4))
