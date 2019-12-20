import UIKit;


class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
      let num3 = (nums1 + nums2).sorted();
      if (num3.count % 2 == 0) {
        let a = Double(num3[(num3.distance(from: 0, to: num3.count) / 2) - 1]);
        let b = Double(num3[(num3.distance(from: 0, to: num3.count) / 2)]);
        
        return Double((a + b) / 2)
        
      } else {
        return Double(num3[num3.distance(from: 0, to: num3.count) / 2])
      }
    }
}

let solution:Solution = Solution();


print("Test case 1:");
let num1 = [1, 3];
let num2 = [2];
if (solution.findMedianSortedArrays(num1, num2) == Double(2)) {
  print("Bingo");
} else {
  print("Boo");
}

print("Test case 2:");
let num3 = [1,2];
let num4 = [3,4];
if (solution.findMedianSortedArrays(num3, num4) == Double(2.5)) {
  print("Bingo")
} else {
  print("Boo");
}

