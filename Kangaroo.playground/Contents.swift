import UIKit

/*
 Complete the function kangaroo in the editor below. It should return YES if they reach the same position at the same time, or NO if they don't.
 kangaroo has the following parameter(s):
 x1, v1: integers, starting position and jump distance for kangaroo 1
 x2, v2: integers, starting position and jump distance for kangaroo 2
 */

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var firstKangaroo = Kangaroo(startingLocation: x1, metersPerJump: v1)
    var secondKangaroo = Kangaroo(startingLocation: x2, metersPerJump: v2)
    
    repeat {
        // If the kangaroos have the same distance per jump and start in different locations, they'll never meet.
        let equalMetersPerJump = firstKangaroo.metersPerJump == secondKangaroo.metersPerJump
        let differentStartingLocation = firstKangaroo.startingLocation != secondKangaroo.startingLocation
        if equalMetersPerJump && differentStartingLocation {
            return "NO"
        }
        // Make the kangaroos jump
        firstKangaroo.jump()
        secondKangaroo.jump()

        // If both kangaroo's current location is equal, return "YES"
        if firstKangaroo.currentPosition == secondKangaroo.currentPosition {
            return "YES"
        }
        // If the kangaroo with the bigger jump has a greater currentPosition than the other, return "NO"
        let biggerJumper = identifyBiggerJumper(firstKangaroo: firstKangaroo, secondKangaroo: secondKangaroo)
        let smallerJumper = identifySmallerJumper(firstKangaroo: firstKangaroo, secondKangaroo: secondKangaroo)
        
        if biggerJumper.currentPosition > smallerJumper.currentPosition {
            return "NO"
        }
    } while true
}

// Use Kangaroo type to simplify reasoning
struct Kangaroo {
    var startingLocation: Int
    var metersPerJump: Int
    var currentPosition: Int
    
    init(startingLocation: Int, metersPerJump: Int) {
        self.startingLocation = startingLocation
        self.metersPerJump = metersPerJump
        currentPosition = startingLocation
    }
    
    mutating func jump() {
        currentPosition += metersPerJump
    }
}

func identifyBiggerJumper(firstKangaroo: Kangaroo, secondKangaroo: Kangaroo) -> Kangaroo {
    return firstKangaroo.metersPerJump > secondKangaroo.metersPerJump ? firstKangaroo : secondKangaroo
}

func identifySmallerJumper(firstKangaroo: Kangaroo, secondKangaroo: Kangaroo) -> Kangaroo {
    return firstKangaroo.metersPerJump < secondKangaroo.metersPerJump ? firstKangaroo : secondKangaroo
}

let yes = "YES"
let no = "NO"

let sampleInput1 = kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
assert(sampleInput1 == no, "result should be NO")

let sampleInput2 = kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
assert(sampleInput2 == yes, "Result should be YES")

let sampleInput3 = kangaroo(x1: 1, v1: 2, x2: 2, v2: 1)
assert(sampleInput3 == yes, "Result should be YES")

let sampleInput4 = kangaroo(x1: 43, v1: 2, x2: 70, v2: 2)
assert(sampleInput4 == no, "Result should be NO")
