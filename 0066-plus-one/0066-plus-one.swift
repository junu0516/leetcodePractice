class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
    
        // 끝에서 부터 1더한 후, 캐리 여부 확인하면서 처음까지 순회 O(N)
        var hasCarry = true
        let lastIndex = digits.count - 1
        for index in (0...lastIndex) {
            guard hasCarry else { break }

            let reversedIndex = lastIndex - index

            let isFirst = reversedIndex == 0
            let isLast = reversedIndex == lastIndex
            let isNotLast = !isLast

            let currentDigit = digits[reversedIndex]
            let updatedDigit = hasCarry ? currentDigit + 1 : currentDigit            
            
            hasCarry = updatedDigit >= 10
            digits[reversedIndex] = hasCarry ? 0 : updatedDigit
        }
        
        return hasCarry ? [1] + digits : digits
    }
}
