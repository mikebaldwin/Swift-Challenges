//: Playground - noun: a place where people can play

import UIKit

// Time Conversion: https://www.hackerrank.com/challenges/time-conversion/problem

func timeConversion(s: String) -> String {
    var twelveHourTime = s // Because I like descriptive variable names
    
    let isAfterNoon = twelveHourTime.hasSuffix("PM")
    twelveHourTime.removeLast(2)

    let components = twelveHourTime.split(separator: ":")
    var hourAsInt = Int(components[0])!
    
    if isAfterNoon && hourAsInt < 12 {
        hourAsInt += 12
    } else if isAfterNoon == false && hourAsInt == 12 {
        hourAsInt = 0
    }
    
    let newHour = (hourAsInt < 10) ? "0" + String(hourAsInt) : String(hourAsInt)
    
    return "\(newHour):\(components[1]):\(components[2])"
}

timeConversion(s: "07:05:45PM")
timeConversion(s: "12:00:00PM")
timeConversion(s: "12:00:00AM")
