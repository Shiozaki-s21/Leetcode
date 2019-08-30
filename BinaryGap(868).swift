class Solution {
  func binaryGap(_ N: Int) -> Int {
    var binary = Array(String(N, radix: 2))
    
    var oneIndex:[Int] = []
    for i in 0..<binary.count {
      
      if binary[i] == "1" {
        oneIndex.append(i)
      }
    }
    
    var distances:[Int] = []
    for i in 0..<oneIndex.count - 1 {

      distances.append(oneIndex[i + 1] - oneIndex[i])
    }
    
    if let max = distances.max() {
      return max
    }
    
    return 0
  }
}
