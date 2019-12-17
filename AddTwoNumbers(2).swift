import Foundation;

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode ? {
        return createAddedList(l1, l2, 0);
    }
    
    private func createAddedList(_ l1: ListNode ?, _ l2: ListNode ?, _ mu: Int) -> ListNode ? {
    var listNode: ListNode?;
    var nextMu = 0;
    if(l1 == nil && l2 == nil && mu == 0) {
    return nil;
} else {
    let l1Num = l1 != nil ? l1!.val : 0;
    let l2Num = l2 != nil ? l2!.val : 0;
    var sum = l1Num + l2Num + mu;

    if sum > 9 {
        nextMu = 1;
        sum = sum - 10;
    }
    listNode = ListNode.init(sum);
}

listNode?.next = createAddedList(l1?.next, l2?.next, nextMu);
return listNode
    }
}


let test: Solution = Solution()
let l1 = ListNode.init(2);
var ln = ListNode.init(4);
l1.next = ln;
ln = ListNode.init(3);
l1.next!.next = ln
let l2 = ListNode.init(5);
ln = ListNode.init(6);
l2.next = ln;
ln = ListNode.init(4);
l2.next!.next = ln;

let l3 = test.addTwoNumbers(l1, l2)
print(l3!.val)
print(l3!.next!.val)
print(l3!.next!.next!.val)
