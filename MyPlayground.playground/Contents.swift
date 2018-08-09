//: Playground - noun: a place where people can play

import UIKit

// Birthday Cake Candles: https://www.hackerrank.com/challenges/birthday-cake-candles/problem

func birthdayCakeCandles(ar: [Int]) -> Int {
    let candleHeights = buildLookupTable(for: ar)
    let tallestCandle = findTallestCandle(candleHeights)
    return tallestCandle.count
}

func buildLookupTable(for candles: [Int]) -> [Int : Int] {
    var candleHeights: [Int : Int] = [ : ]
    for candle in candles {
        if let heightCount = candleHeights[candle] {
            candleHeights[candle] = heightCount + 1
        } else {
            candleHeights[candle] = 1
        }
    }
    return candleHeights
}

func findTallestCandle(_ candleHeights: [Int : Int]) -> (height: Int, count: Int) {
    var tallestCandle = (height: 0, count: 0)
    candleHeights.forEach { (height, count) in
        if height > tallestCandle.height {
            tallestCandle.height = height
            tallestCandle.count = count
        }
    }
    return tallestCandle
}

let sampleInput = [3, 2, 1, 3]
let sampleInput2 = [2, 2, 2, 2]
birthdayCakeCandles(ar: sampleInput)
