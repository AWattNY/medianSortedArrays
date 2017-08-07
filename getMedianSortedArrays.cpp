#include <iostream>
#include <math.h> 
using namespace std;

int findMedian(int arr1[], int start1, int end1, int arr2[], int start2, int end2) {
        if ( end1 - start1 == 1 && end2 - start2 == 1 ) {
            return ( fmax(arr1[start1], arr2[start2]) + fmin(arr1[end1], arr2[end2]) ) / 2;
        }    
    
    int median1Index = floor((start1 + end1 ) / 2);
    int median2Index = floor((start2 + end2 ) / 2);
    int median1 = arr1[median1Index];
    int median2 = arr2[median2Index];

    if ( median1 == median2 ) {
        return median1;
    }    
  
    if ( median1 < median2 ) {
        start1 = median1Index;
        if ( end2 - start2 > 1 ) { 
            end2 = median2Index;
        }        
    } else {
        start2 = median2Index;
        if ( end1 - start1 > 1 ) { 
            end1 = median1Index;
        }    
    }            
  
    return findMedian(arr1, start1, end1, arr2, start2, end2);
}

int main() {
    int A[5] = { 1, 2, 3, 4, 4 };
    int B[5] = { 6, 9, 10, 11, 15};

    cout << findMedian(A, 0, 4, B, 0, 4);
} 