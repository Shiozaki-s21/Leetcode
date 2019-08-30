class Solution {
    func judgeCircle(_ moves: String) -> Bool {
       var x = 0
        var y = 0
        moves.forEach { c in
                         switch c.description {
  case "U":
      x = x + 1
  case "D":
      x = x - 1
  case "L":
      y = y - 1
  case "R":
      y = y + 1
  default:
    print("def")
  }
                      }
        
        
        return x == 0 && y == 0
    }
}
