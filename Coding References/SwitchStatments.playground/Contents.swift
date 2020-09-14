
import UIKit

var name = "David"

switch name {

case "Aaron":
    print("Correct")
    
case "Ben":
    print("Correct")

default:
    print("Incorrect")
}

var number = 1000

switch number {

case 0...50:
    print("Number between 0-50")
    
case 51...100:
    print("Number between 51-100")
    
case 101...150:
    print("Number between 101-151")

default:
    print("Number not available")

}
