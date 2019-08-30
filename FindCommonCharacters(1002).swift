class Solution {
  func commonChars(_ A: [String]) -> [String] {
    var arr = A
    var result = arr.removeFirst()
    
    while arr.count >= 1 {
      var comp = arr.removeFirst()
      var temp = ""
      
      comp.forEach({ c in
        if let tar = result.firstIndex(of: c) {
            temp.append(result.remove(at: tar))
        }
        
      })
      result = temp
    }
  
    var res:[String] = []
    result.forEach({c in
      res.append(String(c))
    })
    
    return Array(res)
  }
}
