class Solution {
  public func arrayPairSum(_ nums: [Int]) -> Int {
    let arr = nums.sorted()
    var sum = 0
    for index in stride(from: 0, to: arr.count, by: 2){
      sum +=  arr[index]
    }
    return sum
  }
}
