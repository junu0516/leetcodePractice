class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var changedNums: [Int] = []
        
        for num in nums {
            if num != val {
                changedNums.append(num)
            }
        }
        
        nums = changedNums
        
        return nums.count
    }
}