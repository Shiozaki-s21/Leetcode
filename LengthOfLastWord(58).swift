class Solution {
  func lengthOfLastWord(_ s: String) -> Int {
    return s.split(separator: " ").last?.description.count ?? 0
  }
}

