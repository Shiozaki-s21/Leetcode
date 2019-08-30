class Solution {
  func numRookCaptures(_ board: [[Character]]) -> Int {
    var rookPositionRow:Int = 0
    var rookPositionLine:Int = 0
    var result = 0
    
    for i in 0..<board[0].count {
      if board[i].contains("R") {
        rookPositionLine = i
        rookPositionRow = board[i].firstIndex(of: "R")!
      }
    }
    
    for i in (rookPositionLine + 1) ..< board[0].count {
      if board[i][rookPositionRow] == "B" {
        break
      } else if board[i][rookPositionRow] == "p" {
        result += 1
        break
      }
    }
      
      for i in (0..<rookPositionLine).reversed() {
        if board[i][rookPositionRow] == "B" {
          break
        } else if board[i][rookPositionRow] == "p" {
          result += 1
          break
        }
    }
        
    for i in   (0..<rookPositionRow).reversed() {
          if board[rookPositionLine][i]  == "B" {
            break
          } else if board[rookPositionLine][i] == "p" {
            result += 1
            break
          }
    }
        
        for i in (rookPositionRow + 1) ..< board[0].count {
          if board[rookPositionLine][i] == "B" {
            break
          } else if board[rookPositionLine][i] == "p" {
            result += 1
            break
        }
    }
          
          return result
    
  }
}
 
