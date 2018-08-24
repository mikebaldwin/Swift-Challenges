//: Playground - noun: a place where people can play

import Foundation

// Apples and Oranges - https://www.hackerrank.com/challenges/apple-and-orange/problem

func countApplesAndOranges(startingPoint: Int, endingPoint: Int, appleTreeLocation: Int, orangeTreeLocation: Int, apples: [Int], oranges: [Int]) -> Void {
    
    let appleLocations = locationsOfFallenFruit(fruits: apples, treeLocation: appleTreeLocation)
    let orangeLocations = locationsOfFallenFruit(fruits: oranges, treeLocation: orangeTreeLocation)
    
    let applesOnHouse = fruitOnHouse(fruitLocations: appleLocations,
                                     houseStart: startingPoint,
                                     houseEnd: endingPoint)
    let orangesOnHouse = fruitOnHouse(fruitLocations: orangeLocations,
                                      houseStart: startingPoint,
                                      houseEnd: endingPoint)
    
    print(applesOnHouse)
    print(orangesOnHouse)
}

func locationsOfFallenFruit(fruits: [Int], treeLocation: Int) -> [Int] {
    var locations: [Int] = []
    for fruit in fruits {
        locations.append(treeLocation + fruit)
    }
    return locations
}

func fruitOnHouse(fruitLocations: [Int], houseStart: Int, houseEnd: Int) -> Int {
    var count = 0
    for fruit in fruitLocations where fruit >= houseStart && fruit <= houseEnd {
        count += 1
    }
    return count
}

countApplesAndOranges(startingPoint: 7, endingPoint: 11, appleTreeLocation: 5, orangeTreeLocation: 15, apples: [-2, 2, 1], oranges: [5, -6])
