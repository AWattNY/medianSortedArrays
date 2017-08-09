import Foundation

func findMedian(arr1: [Int], start1: Int, end1: Int , arr2: [Int], start2: Int, end2: Int) -> Int {
    if ( end1 - start1 == 1 && end2 - start2 == 1 ) {
        return ( max(arr1[start1], arr2[start2]) + min(arr1[end1], arr2[end2]) ) / 2
    }
    
    let median1Index: Int = (start1 + end1 ) / 2
    let median2Index: Int = (start2 + end2 ) / 2
    let median1: Int = arr1[median1Index]
    let median2: Int = arr2[median2Index]
    var s1: Int = start1
    var e1: Int = end1
    var s2: Int = start2
    var e2: Int = end2
    
    if ( median1 == median2 ) {
        return median1
    }
    
    if ( median1 < median2 ) {
        s1 = median1Index
        if ( end2 - start2 > 1 ) {
            e2 = median2Index
        }
    } else {
        s2 = median2Index
        if ( end1 - start1 > 1 ) {
            e1 = median1Index
        }
    }
    
    return findMedian(arr1: arr1, start1: s1, end1: e1, arr2: arr2, start2: s2, end2: e2)
}

let A:[Int] = [1, 2, 3, 4, 4]
let B:[Int] = [6, 9, 10, 11, 15]
print(findMedian(arr1: A, start1: 0, end1: 4, arr2: B, start2: 0, end2: 4));