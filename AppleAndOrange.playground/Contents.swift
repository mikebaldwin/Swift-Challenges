//: Playground - noun: a place where people can play

import Foundation

// Apples and Oranges - https://www.hackerrank.com/challenges/apple-and-orange/problem

func countApplesAndOranges(startingPoint: Int, endingPoint: Int, appleTreeLocation: Int, orangeTreeLocation: Int, apples: [Int], oranges: [Int]) -> Void {
    
    var appleLocations: [Int] = []
    var orangeLocations: [Int] = []
    var applesOnHouse = 0
    var orangesOnHouse = 0
   
    // Get location of fallen apples
    
    for apple in apples {
        appleLocations.append(appleTreeLocation + apple)
    }
    
    // get location of fallen oranges
    for orange in oranges {
        orangeLocations.append(orangeTreeLocation + orange)
    }
    
    // check to see if each fallen apple is within the range of startingPoint and endingPoint
    for apple in appleLocations where apple >= startingPoint && apple <= endingPoint {
        applesOnHouse += 1
    }
    
    // check to see if each fallen orange is within the range of startingPoint and endingPoint
    for orange in orangeLocations where orange >= startingPoint && orange <= endingPoint {
        orangesOnHouse += 1
    }
    
    // Print number of apples and oranges that landed within each point
    print("\(applesOnHouse), \(orangesOnHouse)")
}

countApplesAndOranges(startingPoint: 7, endingPoint: 11, appleTreeLocation: 5, orangeTreeLocation: 15, apples: [-2, 2, 1], oranges: [5, -6])
