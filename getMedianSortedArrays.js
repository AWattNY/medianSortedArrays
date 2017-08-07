const getMedian = (arr1, start1, end1, arr2, start2, end2) => {
  
  if ( end1 - start1 === 1 && end2 - start2 === 1 ) {
    return ( Math.max(arr1[start1], arr2[start2]) + Math.min(arr1[end1], arr2[end2]) ) / 2;  
  } 

  const median1Index = Math.floor((start1 + end1 ) / 2);
  const median2Index = Math.floor((start2 + end2 ) / 2);
  const median1 = arr1[median1Index];
  const median2 = arr2[median2Index];

  if ( median1 === median2 ) {
    return median1;
  }

  if ( median1 < median2 ) {
    start1 = median1Index;
    end2 = ( end2 - start2 > 1 ) ? median2Index : end2;
  } else {
    start2 = median2Index;
    end1 = ( end1 - start1 > 1 ) ? median1Index : end1;
  }
  return getMedian(arr1, start1, end1, arr2, start2, end2);

};

const A = [1, 2, 3, 4, 7];
const B = [0, 5, 6, 9, 11];
console.log(getMedian(A, 0, 4, B, 0, 4));


