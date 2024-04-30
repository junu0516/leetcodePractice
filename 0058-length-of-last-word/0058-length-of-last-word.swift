class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        // 양끝 공백 우선 제거하고 시작
        let s = s.trimmingCharacters(in: .whitespaces)
        
        let chars = Array(s)
        var maxLength = 0
        
        // 반복문 돌면서 단어 사이의 공백 고려
        for char in chars {
            if char == " " {
                maxLength = 0
            } else {
                maxLength += 1
            }
        }
        
        return maxLength
    }
}