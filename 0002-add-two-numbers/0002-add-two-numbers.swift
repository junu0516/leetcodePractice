/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var left = l1
        var right = l2
        
        var carry = 0
        var sums = ListNode()
        var currNode: ListNode? = sums
        
        while left != nil && right != nil {
            let leftVal = left!.val
            let rightVal = right!.val
            
            let sum = leftVal + rightVal + carry
            let nextNode = ListNode(sum % 10)
            currNode?.next = nextNode
            
            left = left?.next
            right = right?.next
            carry = sum / 10
            currNode = nextNode
        }
        
        var remain = left ?? right
        
        while remain != nil {
            let sum = remain!.val + carry
            let nextNode = ListNode(sum % 10)
            currNode?.next = nextNode
            
            remain = remain?.next
            carry = sum / 10
            currNode = nextNode
        }

        if carry > 0 {
            currNode?.next = ListNode(carry)
        }

        return sums.next
    }
}

extension Array where Element == Int {
    
    func toList() -> ListNode? {
        
        var list = ListNode()
        
        for i in (0..<self.count) {
            let val = self[self.count-i]
            
        }
        
        return list
    }
}