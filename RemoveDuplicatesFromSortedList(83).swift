class Solution {
  func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var currentPointer = head?.next
    var previousPointer: ListNode? = head
    var value: Int? = head?.val
    
    while currentPointer != nil {
      let nextPointer = currentPointer?.next
      if currentPointer?.val == value {
        previousPointer?.next = nextPointer
        currentPointer?.next = nil
      } else {
        value = currentPointer?.val
        previousPointer = currentPointer
      }
      currentPointer = nextPointer
    }
    
    return head
  }
}
