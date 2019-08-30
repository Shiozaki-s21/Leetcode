class Solution {
  func removeOuterParentheses(_ S: String) -> String {
    var openParenthesis = 0
    var closeParenthesis = 0
    var temp = ""
    var array:[String] = []
    
    for parenthesis in S.enumerated() {
      if parenthesis.element == "(" {
        temp.append("(")
        openParenthesis += 1
      } else if parenthesis.element == ")" {
        temp.append(")")
        closeParenthesis -= 1
      }
      
      if openParenthesis + closeParenthesis == 0 {
        temp = String(temp.dropFirst())
        temp = String(temp.dropLast())
        array.append(temp)
        temp = ""
      }
    }
    
    return array.joined(separator: "")
  }
}
