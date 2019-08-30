class Solution {
  func reverseWords(_ s: String) -> String {
    if s.count == 0 {
      return ""
    }
    var temp:[String] = []
    s.split(separator: " ").forEach { word in
      temp.append(String(word.reversed()))
    }
    
    var result:String = ""
    result.append(temp[0])
    
    for i in 1..<temp.count {
      result.append(" " + temp[i])
    }
    
    return result
  }
}

