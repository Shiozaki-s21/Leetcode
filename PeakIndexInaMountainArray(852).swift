class Solution {
  func peakIndexInMountainArray(_ A: [Int]) -> Int {
    let arr = A
    var count = 0
    var result:[Int] = []
    arr.sorted(by: { (a, b) -> Bool in
      
      if a > b {
        count = count + 1
      } else {
        result.append(count)
        count = 0
      }
      return false
    })
    
    return result.first!
  }
}
