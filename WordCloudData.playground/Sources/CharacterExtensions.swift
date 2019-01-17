import Foundation

public extension Character {
    public func isLetter() -> Bool {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        if letters.contains(self) {
            return true
        }
        return false
    }
}
