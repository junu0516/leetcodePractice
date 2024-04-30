class Solution {
    // 이진탐색
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = (left + right) / 2
        
        while true {     
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
            
            mid = (left + right) / 2
            
            if left > right {
                mid = left
                break
            }
        }
        
        return mid
    }
}