class Solution {
  func findComplement(_ num: Int) -> Int {
    let str = String(num, radix: 2)
    var comp = ""
    
    str.map({ s -> String in
      if s == "0" { return "1" }
      else {return "0"}
    }).forEach({ s in
      comp.append(s)
    })
    
    return Int(comp, radix: 2)!
  }
}

