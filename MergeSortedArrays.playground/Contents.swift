//: Playground - noun: a place where people can play

// Solution to Merge Sorted Arrays from interviewcake.com
// https://www.interviewcake.com/question/swift/merge-sorted-arrays?course=fc1&section=array-and-string-manipulation

let myArray = [3, 4, 6, 10, 11, 15]
let alicesArray = [1, 5, 8, 12, 14, 19]

func mergeArrays(a: [Int], b: [Int]) -> [Int] {

    var mergedArrays = Array(repeating: 0, count: a.count + b.count)
    var aIndex = 0
    var bIndex = 0
    var mergedIndex = 0

    for _ in 0..<mergedArrays.count {
        let aIsExhausted = aIndex >= a.count
        let bIsExhausted = bIndex >= b.count
        
        if !aIsExhausted && (bIsExhausted || a[aIndex] < b[bIndex]) {
            mergedArrays[mergedIndex] = a[aIndex]
            aIndex += 1
        } else {
            mergedArrays[mergedIndex] = b[bIndex]
            bIndex += 1
        }
        mergedIndex += 1
    }

    return mergedArrays
}

print(mergeArrays(a: myArray, b: alicesArray))
