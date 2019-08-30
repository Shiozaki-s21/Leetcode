import UIKit

class Solution {

  func sortArrayByParity(_ A: [Int]) -> [Int] {
    var arr = A
    
    for i in 0..<A.count {
      for j in i+1..<A.count {
        if arr[j] % 2 == 0 && arr[j] != 1 {
          let temp = arr[j]
          arr[j] = arr[i]
          arr[i] = temp
          break
        }
      }
      print(arr)
    }
    return arr
  }
}
