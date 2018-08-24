//: Playground - noun: a place where people can play

import Foundation

// Apples and Oranges - https://www.hackerrank.com/challenges/apple-and-orange/problem

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let appleLocations = locationsOfFallenFruit(fruits: apples, treeLocation: a)
    let orangeLocations = locationsOfFallenFruit(fruits: oranges, treeLocation: b)
    
    let applesOnHouse = fruitOnHouse(fruitLocations: appleLocations,
                                     houseStart: s,
                                     houseEnd: t)
    let orangesOnHouse = fruitOnHouse(fruitLocations: orangeLocations,
                                      houseStart: s,
                                      houseEnd: t)
    
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

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
