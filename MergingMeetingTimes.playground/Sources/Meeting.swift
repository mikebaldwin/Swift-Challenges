
import Foundation

public class Meeting: CustomStringConvertible {
    
    public var startTime: Int
    public var endTime: Int
    
    public init(startTime: Int, endTime: Int) {
        // number of 30 min blocks past 9:00 am
        self.startTime = startTime
        self.endTime = endTime
    }
    
    public var description: String {
        return "(\(startTime), \(endTime))"
    }
}
