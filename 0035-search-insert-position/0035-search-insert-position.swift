class Solution {
    // 이진탐색
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = (left + right) / 2
        
        while true {     
            // print(mid)
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
                // print("끝, left:\(left), right:\(right)")
                break
            }
        }
        
        return mid
    }
}