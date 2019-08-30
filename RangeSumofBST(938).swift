class Solution {
  func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    return sum(root, L, R)
  }
  
  func sum(_ root: TreeNode?, _ L: Int, _ R: Int ) -> Int {
    var result = 0
    if let val = root?.val {
      if val >= L && val <= R {
        result += val
      }
    } else {
      return 0
    }
    
    result = result + sum(root?.left, L, R)
    result = result + sum(root?.right, L, R)
    return result
}

