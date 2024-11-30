import Foundation

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let top: [Character]
        let bottom: [Character]
        
        if a.count >= b.count {
            top = Array(a)
            bottom = Array(b)
        } else {
            top = Array(b)
            bottom = Array(a)
        }
        
        var result = top
        
        var hasCarry = false
        for index in (0...top.count-1) {
            
            let topIndex = top.count - index - 1
            let bottomIndex = bottom.count - index - 1

            let topChar = top[topIndex]
            let bottomChar = bottomIndex >= 0 ? bottom[bottomIndex] : "0"
            
            let topNum = Int(String(topChar))!
            let bottomNum = Int(String(bottomChar))!
            
            
            let sum = hasCarry ?  topNum + bottomNum + 1 : topNum + bottomNum 
            hasCarry = sum >= 2
            
            let sumChar = hasCarry ? Character(String(sum % 2)) : Character(String(sum))
            result[topIndex] = sumChar
        }
        
        return hasCarry ? String(["1"] + result) : String(result)
    }
}
