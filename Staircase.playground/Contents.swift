import Foundation

/*
 Consider a staircase of size n = 4:
 
    #
   ##
  ###
 ####
 
 Observe that its base and height are both equal to , and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.
 Write a program that prints a staircase of size n.
 
 ## Function Description
 Complete the staircase function in the editor below. It should print a staircase as described above.
 staircase has the following parameter(s):
 n: an integer
 
 */

func staircase(n: Int) -> Void {
    // Start at 1, because starting at 0 will print an empty string
    var i = 1
    while i <= n {
        guard i > 0 else { break }
        var output = ""

        for _ in 0..<n - i {
            output += " "
        }

        for _ in 0..<i {
            output += "#"
        }

        print(output)
        i += 1
    }
}

staircase(n: 6)
