//: Playground - noun: a place where people can play

import UIKit

// From Interviewcake.com
// You created a game that is more popular than Angry Birds. Each round, players receive a score
// between 0 and 100, which you use to rank them from highest to lowest. So far you're using an
// algorithm that sorts in O(nlgn) time, but players are complaining that their rankings aren't
// updated fast enough. You need a faster sorting algorithm.

let unsortedScores = [37, 89, 41, 65, 41, 65, 91, 53]
let highestPossibleScore = 100

func sortScores(_ unsortedScores: [Int], with highestPossibleScore: Int) -> [Int] {
    var sortedScores: [Int] = []
    
    var scoreCounts: [Int : Int] = [:]
    
    for score in unsortedScores {
        if let count = scoreCounts[score] {
            scoreCounts[score] = count + 1
        } else {
            scoreCounts[score] = 1
        }
    }
    
    // Iterate from lowest possible to highest possible score
    // comparing to keys in scoreCounts, values will be sorted into the correct order
    for score in 0...highestPossibleScore {
        if let numberOfScores = scoreCounts[score] {
            // Add an instance of this score for each count
            // We're just looping to repeat an .append() call, so it will preserve O(n) time.
            for _ in 1...numberOfScores {
                sortedScores.append(score)
            }
        }
    }
    
    return sortedScores
}

sortScores(unsortedScores, with: highestPossibleScore)
