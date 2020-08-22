import UIKit


var a = 10
a = a + 1
a = a - 1
a = a * a


var b = 10
// take the current value of b and add it to 10 then assign the new value to b
b += 10 /// += meas add then assign to
b -= 10/// -= mean subtract the assign to












































/**
  Adds two numbers together and returns the sum.
     - parameters:
         - num1: The first number
         - num2: The second number
     - returns: The sum of num1 and num2.
  */
 func addNumbers(num1: Int, num2: Int) -> Int {
     return num1 + num2
 }

 var numberOfPoints: UITextField!
 var numberOfGames: UITextField!

func clickButton(sender:UIButton){
   guard let pointsText = numberOfPoints.text, !pointsText.isEmpty else {
       // alert that the text field is empty
       return
   }
   guard let gamesText = numberOfGames, !gamesText.isEmpty else {
       // alert that the text field is empty
       return
   }
   guard let points = Double(pointsText), points >= 0 else {
       // alert that you can't have negative points or that the entered text did not convert to a number
       return
   }
   guard let games = Double(pointsText), games > 0 else {
       // alert that you can't have negative or zero games or that the entered text did not convert to a number
       return
   }
   let pointAverage = points/games
   outputlabel.text = "\(pointAverage)"
}
