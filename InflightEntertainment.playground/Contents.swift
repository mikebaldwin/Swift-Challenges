//: Playground - noun: a place where people can play

import Foundation

func canTwoMovies(in movieLengths: [Int], fillFlight flightLength: Int) -> Bool {
    
    var movieLengthsChecked = Set<Int>()
    
    for movieLength in movieLengths {
        let secondMovieLength = flightLength - movieLength
        if movieLengthsChecked.contains(secondMovieLength) {
            return true
        } else {
            movieLengthsChecked.insert(movieLength)
        }
    }
    return false
}
