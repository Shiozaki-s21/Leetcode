class Solution {
  func uniqueMorseRepresentations(_ words: [String]) -> Int {

    let morseDict = ["a": ".-", "b": "-...", "c": "-.-.", "d": "-..",
                     "e": ".", "f": "..-.", "g": "--.", "h": "....",
                     "i": "..", "j": ".---", "k": "-.-", "l": ".-..",
                     "m": "--", "n": "-.", "o": "---", "p": ".--.",
                     "q": "--.-", "r": ".-.", "s": "...", "t": "-",
                     "u": "..-", "v": "...-", "w": ".--", "x": "-..-",
                     "y": "-.--", "z": "--.."]
    var resultSet: Set<String> = Set()
    
    for s in words {
      var result: String = ""
      for char in Array(s) {
        
        let a = String(char)
        if let data = morseDict[a] {
          result.append(data)
        }
      }
      resultSet.insert(result)
    }
    
    return resultSet.count
  }
}
