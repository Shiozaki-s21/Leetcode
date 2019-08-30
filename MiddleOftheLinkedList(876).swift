class Solution {
  func middleNode(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    
    var slow = head
    var fast = head
    
    while fast != nil && fast!.next != nil {
      slow = slow!.next
      fast = fast!.next!.next
    }
    
    return slow
  }
}

