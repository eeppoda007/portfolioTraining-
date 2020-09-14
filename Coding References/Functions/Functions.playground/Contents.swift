
import UIKit

func trigger1() {
    
    print("Hello")
    
}

trigger1()

func trigger2(food: String) {
    
    print("i like \(food)")
    
}

trigger2(food: "Burgers")


func isOdd(n: Int) -> Bool
{
    if n % 2 == 0  {
        return false
    }
    else
    {
        return true
    }
}






//Create your function here:



//Do not change the code below.
//let testNumber = Int(readLine()!)!
let testNumber = Int(5)
let numberIsOdd = isOdd(n: testNumber)
print(numberIsOdd)
