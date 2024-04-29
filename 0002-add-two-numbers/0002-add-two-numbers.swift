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
        
        // 1. 두 리스트 중 어느 하나가 nil이 될 때 까지 더해줌
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
        
        // 2. 두 리스트 중 아직 nil이 아닌 것이 있으면 carry값 더해주면서 남은 숫자들 추가
        var remain = left ?? right
        
        while remain != nil {
            let sum = remain!.val + carry
            let nextNode = ListNode(sum % 10)
            currNode?.next = nextNode
            
            remain = remain?.next
            carry = sum / 10
            currNode = nextNode
        }

        // 마지막 숫자까지 누적한 후 carry값이 남아있으면 그대로 추가
        if carry > 0 {
            currNode?.next = ListNode(carry)
        }

        return sums.next
    }
}