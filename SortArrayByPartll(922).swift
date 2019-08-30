class Solution {
  func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var oddArray = A.filter{ $0 % 2 != 0 }
    var evenArray = A.filter{ $0 % 2 == 0 }
    var result:[Int] = []
    
    for i in 0..<oddArray.count {
      result.append(evenArray[i])
      result.append(oddArray[i])
    }
    return result
  }
}
