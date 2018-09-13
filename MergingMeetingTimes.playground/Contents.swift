//: Playground - noun: a place where people can play

import Foundation

func mergeMeetings(_ meetings: [Meeting]) -> [Meeting] {
    
    var sortedMeetings = meetings.map { Meeting(startTime: $0.startTime, endTime: $0.endTime) }
    sortedMeetings.sort { $0.startTime < $1.startTime }
    
    var mergedMeetings = [sortedMeetings[0]]
    
    for i in 1..<sortedMeetings.count {
        let currentMeeting = sortedMeetings[i]
        let lastMergedMeeting = mergedMeetings[mergedMeetings.count - 1]

        if currentMeeting.startTime <= lastMergedMeeting.endTime {
            lastMergedMeeting.endTime = max(lastMergedMeeting.endTime, currentMeeting.endTime)
        } else {
            mergedMeetings.append(currentMeeting)
        }
    }

    return mergedMeetings
}

let input = [
    Meeting(startTime: 0, endTime: 1),
    Meeting(startTime: 3, endTime: 5),
    Meeting(startTime: 4, endTime: 8),
    Meeting(startTime: 10, endTime: 12),
    Meeting(startTime: 9, endTime: 10)
]

mergeMeetings(input)
