class Solution {
  func isPalindrome(_ x: Int) -> Bool {
    let arr = Array(String(x))
    
    var flag:Bool = true
    
    for i in 0..<arr.count / 2 {
      if arr[i] != arr[arr.count - i - 1] {
        flag = false
      }
    }
    return flag
  }
}

