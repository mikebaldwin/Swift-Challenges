import Foundation

public class WordCloudData {
    
    public init() { }
    
    public func splitWords(_ string: String) -> [String] {
      
        var words: [String] = []
        
        var currentWordStartIndex = 0
        var currentWordLength = 0
        
        for (i, character) in string.enumerated() {
            if character.isLetter() {
                if currentWordLength == 0 {
                    currentWordStartIndex = i
                }
                currentWordLength += 1
            } else {
                let startIndex = string.index(string.startIndex, offsetBy: currentWordStartIndex)
                let endIndex = string.index(startIndex, offsetBy: currentWordLength)
                let word = string[startIndex...endIndex]
                words.append(String(word))
                currentWordLength = 0
            }
        }
        
        return words
    }
    
    let string = "mind the gap"
}
