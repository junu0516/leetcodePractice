class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let s = s.trimmingCharacters(in: .whitespaces)
        let chars = Array(s)
        var maxLength = 0
        
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