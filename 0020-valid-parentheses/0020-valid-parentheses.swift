class Solution {
    func isValid(_ s: String) -> Bool {
        
        let needsEarlyExit = s.hasPrefix(")") 
        || s.hasPrefix("}") 
        || s.hasPrefix("]")
        || s.hasSuffix("(") 
        || s.hasSuffix("{")
        || s.hasSuffix("[")
        
        if needsEarlyExit {
            return false
        }
 
        let characters = Array(s)
        var bracketsStack: [Character] = []        
        
        for character in characters {
            let isOpenBracket = self.isOpenBracket(character)
            let isCloseBracket = self.isCloseBracket(character)
            
            if isOpenBracket {
                bracketsStack.append(character)
            } else if isCloseBracket {
                guard let top = bracketsStack.last else { return false }
                
                if self.isCorrectPair(openBracket: top, closeBracket: character) {
                    bracketsStack.removeLast()
                } else {
                    bracketsStack.append(character)
                }
            }
        }
        
        return bracketsStack.isEmpty
    }
    
    private func isCorrectPair(openBracket: Character, closeBracket: Character) -> Bool {
        guard 
            self.isOpenBracket(openBracket),
            self.isCloseBracket(closeBracket)
        else { return false }
        
        return (openBracket == "(" && closeBracket == ")")
        || (openBracket == "{" && closeBracket == "}")
        || (openBracket == "[" && closeBracket == "]")
    }
    
    private func isOpenBracket(_ character: Character) -> Bool {
        return character == "(" || character == "{" || character == "["
    }
    
    private func isCloseBracket(_ character: Character) -> Bool {
        return character == ")" || character == "}" || character == "]"
    }

}