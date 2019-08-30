class Solution {
  func repeatedNTimes(_ A: [Int]) -> Int {
    
    var arr = A
    arr.sorted()
    var lastNumber = arr.first!
    var counter = 0
    arr.sorted().forEach({ a in
      if lastNumber == a {
        counter += 1
      } else {
      
        if counter == A.count / 2 {
          return
        } else {
          counter = 1
        }
      }
      lastNumber = a
    })
    return lastNumber
  }
}
