class Solution {
  func romanToInt(_ s: String) -> Int {
    var arr = Array(s)
    let dic:[Character:Int] = ["I":1, "V":5, "X": 10, "L":50, "C": 100, "D": 500, "M": 1000]
    var result = 0
    
    for i in 0..<arr.count {
      
      if i - 1 >= 0 , dic[arr[i]]! > dic[arr[i - 1]]! {
        result += dic[arr[i]]! - (2 * dic[arr[i - 1]]!)
      } else {
        result += dic[arr[i]]!
      }
    }
    return result
  }
}
