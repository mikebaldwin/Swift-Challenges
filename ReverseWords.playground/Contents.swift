//: Playground - noun: a place where people can play

import Foundation

func reverseCharacters(_ message: inout String,
                       fromIndex: String.Index,
                       toIndex: String.Index) {
    
    guard fromIndex != toIndex else {
        return
    }
    
    var leftIndex = fromIndex
    var rightIndex = message.index(before: toIndex)
    
    while leftIndex < rightIndex {
        let leftCharacter = message[leftIndex]
        let rightCharacter = message[rightIndex]
        
        message.replaceSubrange(leftIndex...leftIndex, with: String(rightCharacter))
        message.replaceSubrange(rightIndex...rightIndex, with: String(leftCharacter))
        
        leftIndex = message.index(after: leftIndex)
        rightIndex = message.index(before: rightIndex)
    }
}

func reverseWords(_ message: inout String) {
    
    reverseCharacters(&message,
                      fromIndex: message.startIndex,
                      toIndex: message.endIndex)
    
    var currentWordStartIndex = message.startIndex
    
    for i in message.indices where message[i] == " " {
        reverseCharacters(&message, fromIndex: currentWordStartIndex, toIndex: i)
        currentWordStartIndex = message.index(after: i)
    }
    
    reverseCharacters(&message, fromIndex: currentWordStartIndex, toIndex: message.endIndex)
}

var message = "We're all born naked and the rest is drag"
reverseWords(&message)
