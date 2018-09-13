//: Playground - noun: a place where people can play

let myArray = [3, 4, 6, 10, 11, 15]
let alicesArray = [1, 5, 8, 12, 14, 19]

func mergeArrays(a: [Int], b: [Int]) -> [Int] {
    var mergedArrays: [Int] = []
    var aIndex = 0
    var bIndex = 0

    for i in 0..<(a.count + b.count) {
        guard aIndex < a.count else {
            mergedArrays.append(contentsOf: b[bIndex...])
            break
        }
        guard bIndex < b.count else {
            mergedArrays.append(contentsOf: a[aIndex...])
            break
        }
        if a[aIndex] < b[bIndex] {
            mergedArrays.append(a[aIndex])
            aIndex += 1
        } else {
            mergedArrays.append(b[bIndex])
            bIndex += 1
        }
    }

    return mergedArrays
}

print(mergeArrays(a: myArray, b: alicesArray))
