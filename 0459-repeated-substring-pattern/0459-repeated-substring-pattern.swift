class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        guard s.count > 1 else { return false }
        
        /**
            ab: ab + ab = (a)ba(b)
            abab: abab + abab = (a)bababa(b)
            aba: aba + aba = (a)baab(a)
        
            - 동일한 문자열 s를 연달아 이어 붙이고, 첫번째와 마지막 문자를 제거
            - 이 때 남은 문자열에서 s와 동일한 부분 문자열이 발견되면 됨?
        */
        
        let extendedString = s + s
        let startIndex = extendedString.index(after: extendedString.startIndex)
        let endIndex = extendedString.index(before: extendedString.endIndex)
        let substring = extendedString[startIndex..<endIndex]        
        
        return substring.contains(s)
    }
}