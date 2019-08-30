class Solution {
  func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var ar1 = arr1
    var ar2 = arr2
    var result:[Int] = []
    
    ar2.forEach { num in
      while ar1.contains(num) {
        result.append(ar1.remove(at: ar1.firstIndex(of: num)!))
      }
    }
    
    ar1.sorted().forEach { num in
      result.append(num)
    }
    return result
  }
}
