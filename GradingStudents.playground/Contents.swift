//: Playground - noun: a place where people can play

import Foundation

// Grading Students: https://www.hackerrank.com/challenges/grading/problem

func gradingStudents(grades: [Int]) -> [Int] {
    var roundedGrades: [Int] = []
    // For each grade over 37, find the next multiple of 5.
    for grade in grades {
        // Don't round anything less than 38, since it will still be a failing grade
        if grade < 38 {
            roundedGrades.append(grade)
            continue
        }
        // Find next multiple of 5
        if grade % 5 != 0 {
            var nextMultipleOfFive = grade
            while nextMultipleOfFive % 5 != 0 {
                nextMultipleOfFive += 1
            }
            if nextMultipleOfFive - grade < 3 {
                roundedGrades.append(nextMultipleOfFive)
            } else {
                roundedGrades.append(grade)
            }
        } else {
            roundedGrades.append(grade)
        }
    }
    return roundedGrades
}

let sampleInput = [73, 67, 38, 33, 100, 1, 0]
gradingStudents(grades: sampleInput)
