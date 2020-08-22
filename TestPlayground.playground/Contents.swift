import UIKit

var str = "Hello, playground"


///random generator
//int
let randInt = Int.random(in: 1...6)
let randIntTwo = Int.random(in: 1..<3)
//float
let randFloat = Float.random(in: 1...3)
let randFloatTwo = Float.random(in: 1..<3)
//double
let randDouble = Double.random(in: 1...3)
let randDoubleTwo = Double.random(in: 1..<3)
// bool
Bool.random()

// array
//var rabdArray = Array.randomElement()
//Array.shuffle()



let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//The number of letters in alphabet equals 26

var password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!

//var password = "\(alphabet.shuffled())"

print(password)
