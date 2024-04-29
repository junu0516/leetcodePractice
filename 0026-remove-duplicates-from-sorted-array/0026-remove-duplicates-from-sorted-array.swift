class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Set(nums).sorted() // 중복 제거 후 다시 정렬
        return nums.count
    }
}