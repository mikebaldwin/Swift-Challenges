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
    // start a loop, iterating from 0 to n * n
    var i = 1
    var row = 1
    var offset: Int {
        return (row - 1) * n
    }
    var output = ""
    
    // loop from 1 to the square of n
    while i <= n * n {
        if i - offset <= n - row {
            output += " "
        } else {
            output += "#"
        }
        if i - offset == n {
            output += "\n"
            row += 1
        }
        i += 1
    }
    print(output)
}

staircase(n: 6)
