class Solution {
  func removeDuplicates(_ S: String) -> String {
    let arr = Array(S)
    var stack:[String] = []
    
    arr.forEach({ s in
      stack.append(String(s))
      
      if stack.count >= 2 && stack[stack.count - 1] == stack[stack.count - 2] {
        stack.removeLast()
        stack.removeLast()
      }
    })
    return stack.joined()
  }
}
