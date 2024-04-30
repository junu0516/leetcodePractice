class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count >= 1  else {
            return 0
        }
        
        // 일단 편하게 싹 다 배열 처리
        let chars = Array(s)
        
        var checkingSet: Set<Character> = []
        var maxLength = 0
        
        var prevChar = chars[0]
        
        for i in (0..<chars.count) {
            let currChar = chars[i]
            
            if i == 0 {
                checkingSet.insert(currChar)
            } else {
                if !checkingSet.contains(currChar) {
                    // 문자가 다를 때마다 Set에 일단 넣어줌
                    checkingSet.insert(currChar)
                } else {                
                    // 같은 것 발견하면 Set 비워줌
                    checkingSet = []
                    checkingSet.insert(currChar)
                    
                    var reverseCheckIndex = i-1
                    var reverseCheckChar = chars[reverseCheckIndex]
                    while reverseCheckChar != currChar && reverseCheckIndex >= 0 {
                        checkingSet.insert(reverseCheckChar)
                        reverseCheckIndex -= 1
                        reverseCheckChar = chars[reverseCheckIndex]
                    }
                }   
            }
            // a b c d b c k e f
            // print("currChar: \(currChar), \(checkingSet)")
            // print("-----------------------")
        
            maxLength = max(maxLength, checkingSet.count)
            prevChar = currChar
        }
        
        return maxLength
    }
}