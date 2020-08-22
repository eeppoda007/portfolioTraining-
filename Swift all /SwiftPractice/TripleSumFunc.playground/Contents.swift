import UIKit
//create a function to decide if two ints are equal
func triple_sum(a: Int, b: Int) -> Int
{
    if a == b/// if a is equal to b the run the content in the brackets
     {
        return (a + b) * 3///  as long as the condition is met above return the Int vaue trippled
     }
     else/// if conditon is not met
     {
        return a + b/// return just  the Int value of the sum
     }
 }
// print and pass in the values to the function
print(triple_sum(a: 1, b: 2))
print(triple_sum(a: 3, b: 2))
print(triple_sum(a: 2, b: 2))
