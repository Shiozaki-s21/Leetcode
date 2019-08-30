class Solution {
  func diStringMatch(_ S: String) -> [Int] {
    
    var arr = Array(S)
    
    var smaller = 0
    var bigger = S.count
    var result:[Int] = [Int](repeating: 0, count: S.count + 1)
    
    for i in 0..<S.count {
      if arr[i] == "I" {
        result[i] = smaller
        smaller += 1
      } else {
        result[i] = bigger
        bigger -= 1
      }
    }
    
    result[S.count] = smaller
    return result
  }
}
