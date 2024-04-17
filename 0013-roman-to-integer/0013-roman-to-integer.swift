class Solution {
    func romanToInt(_ s: String) -> Int {
        let characters = Array(s)

        var result = 0
        for index in 0..<characters.count {
            let isFirst = index == 0
            let currentCharacter = characters[index]
            let currentInt = self.convertCharacterToInteger(currentCharacter) ?? 0

            if isFirst {
                result += currentInt
            } else {
                let prevCharacter = characters[index-1]
                let prevInt = self.convertCharacterToInteger(prevCharacter) ?? 0
                
                if currentInt <= prevInt {
                // 현재 문자가 이전 문자보다 작거나 같으면 그냥 더해준다.
                    result += currentInt
                } else {
                // 현재 문자가 이전 문자보다 크거나 같으면 이전값을 빼고 다시 도출해서 더한다.
                    result -= prevInt
                    result += (currentInt-prevInt)
                }
            }
        }

        return result
    }

    private func convertCharacterToInteger(_ char: Character) -> Int? {
        switch char {
            case "I": return 1
            case "V": return 5
            case "X": return 10
            case "L": return 50
            case "C": return 100
            case "D": return 500
            case "M": return 1000
            default: return nil
        }
    }
}