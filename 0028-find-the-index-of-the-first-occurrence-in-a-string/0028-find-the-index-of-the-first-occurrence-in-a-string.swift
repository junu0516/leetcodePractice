class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let range = haystack.range(of: needle) else {
            return -1
        }
        
        let lowerBound = range.lowerBound
        
        return haystack.distance(from: haystack.startIndex, to: lowerBound)
    }
}