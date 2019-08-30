class Solution {
  func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var result:[[Int]] = [[]]
    
    A.forEach{ row -> Void in
      result.append(inv(flip(row)))
    }
    
    result.remove(at: 0)
    return result
  }
  
  private func flip(_ tar:[Int]) -> [Int] {
    return tar.reversed()
  }
  
  private func inv(_ tar:[Int]) -> [Int] {
    var res:[Int] = []
    
    tar.forEach { t in
      if t == 0 {
        res.append(1)
      } else {
        res.append(0)
      }
    }
    return res
  }
}
