class Solution {
    func climbStairs(_ n: Int) -> Int {
        var records = [0, 1, 2] // n = 1,2일 때

        guard n >= 3 else {
            return records[n]
        }
        
        for index in (3...n) {
            // n-1번째 계단에서 1칸 올라오거나, n-2번째 계산에서 2칸 올라올 수 있음
            // d[n] = d[n-1] + d[n-2]
            records.append(records[index-1]+records[index-2])
        }

        return records[n]
    }
}