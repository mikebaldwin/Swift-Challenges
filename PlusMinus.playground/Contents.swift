//: Playground - noun: a place where people can play

import UIKit

// Problem description: https://www.hackerrank.com/challenges/plus-minus/problem?h_r=next-challenge&h_v=zen

let sampleInput = [-4, 3, -9, 0, 4, 1]

func plusMinus(arr: [Int]) -> Void {
    var totals: [String: Int] = [
        "positive" : 0,
        "negative" : 0,
        "zero" : 0
    ]
    
    for number in arr {
        switch number {
        case _ where number > 0:
            if let count = totals["positive"] {
                totals["positive"] = count + 1
            }
        case _ where number < 0:
            if let count = totals["negative"] {
                totals["negative"] = count + 1
            }
        case _ where number == 0:
            if let count = totals["zero"] {
                totals["zero"] = count + 1
            }
        default:
            break
        }
    }
    
    let size = arr.count
    
    if let positiveRatio = totals["positive"] {
        print(String(format: "%.6f", Double(positiveRatio) / Double(size)))
    }
    if let negativeRatio = totals["negative"] {
        print(String(format: "%.6f", Double(negativeRatio) / Double(size)))
    }
    if let zeroRatio = totals["zero"] {
        print(String(format: "%.6f", Double(zeroRatio) / Double(size)))
    }
}

plusMinus(arr: sampleInput)
