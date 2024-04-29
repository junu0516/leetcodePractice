class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Set(nums).sorted()
        return nums.count
    }
}