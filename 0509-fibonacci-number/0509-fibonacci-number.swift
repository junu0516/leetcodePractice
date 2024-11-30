class Solution {
    func fib(_ n: Int) -> Int {
        var records = [0, 1]
        
        guard n >= 2 else {
            return records[n]
        }
        
        for i in (2...n) {
            records.append(records[i-2] + records[i-1])
        }
        
        return records[n]
    }
}