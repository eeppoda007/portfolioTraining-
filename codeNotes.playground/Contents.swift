import UIKit

var str = "Hello, playground"

// adding an equation in a print string statement
print("what is \(2+3) more days left to play till shool")//string interperilation

// array        0        1       2
var friends = [ "mark", "matt", "dona" ]
// call item of the array
friends[0]
print(Int.random(in: 1...10))

let value = 0..<5
func greeting ()
{
    let helloArray = ["hello" , "hello", "hello" ,"hello"]
    
    for item in helloArray{
        print(item, "\n" )
    }
    
}
greeting()


func stingPrintMulti (text: String)
{
    text + text
    return
}


stingPrintMulti(text: "hellodd")


func greetingTwo(personToGreet: String)
{
    print("Hello \(personToGreet) how is your day going")
}





greetingTwo(personToGreet: "Kj")

func subtract(a: Int, b: Int)
{
  
     a - b
  
   
}
   


//figure a leap year out

func isLeap(year: Int) {
  
  //Write your code inside this function.

    let answers = (year % 4 != 0)
    let answersIsLeap = (year % 100 != 0)
    let answersAlsoLeap = (year % 400 == 0)
    if answers
    {
    print("This year of \(year) is not a leap year ")
    }
    else if answersIsLeap
    {
        print("This year of \(year) is a leap year ")
    }
    else if answersAlsoLeap
    {
        print("This year of \(year) is a leap year ")
    }
  
  
}
isLeap(year: 1300)
isLeap(year: 1996)



func subtract(n1: Int, n2: Int)
{
     n1 - n2
}



func calculator() {
  let a = Int(3) //First input
  let b = Int(4) //Second input
  
   
    
  add(n1: a, n2: b)
  subtract2(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.

func  add(n1: Int, n2: Int)
{
    print(n1 + n2)
}

func subtract2(n1: Int, n2: Int)
{
      print(n1 - n2)
}

func multiply(n1: Int, n2: Int)
{
      print(n1 * n2)
}
func divide(n1: Int, n2: Int)  -> Double
{
    let  ans = Double(n1)/Double(n2)
    print(ans)
    return ans

}

//Don't move or change this code:
calculator()




func loveCalculator()
{
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
        case 80...100:
        print("You love each other like Kanye loves Kanye.")
        case 40...79:
        print("You go together like Coke and Mentos.")
        case ...40:
        print("You'll be forever alone")
        default:
        print("You have an error ")
    }
}


loveCalculator()




////Don't change this
//var studentsAndScores = ["Amy": Int?(88), "James": Int?(55), "Helen": Int? (99)]
//
//func highestScore(scores: [String: Int]) {
//
//  let student1 = studentsAndScores["Amy"]!
//    let student2 = studentsAndScores["James"]!
//    let student3 = studentsAndScores["Helen"]!
//
//  var varZero = 0
//
//    if student1 > varZero {
//        varZero = student1
//    }
//  if student2 > varZero {
//         varZero = student2
//     }
//    if student3 > varZero {
//           varZero = student3
//       }
//    print(varZero)
//}
//
////Don't change this
//highestScore(scores: studentsAndScores)



var player1UserName: String? = nil

player1UserName = "My user name"

player1UserName = nil

if player1UserName != nil {
    print(player1UserName!)
}





// is our blue print
struct Town
{
//Properties - which describes what things are like
    //Var
    let name = "Angelaland"
    //array
    var citizens = ["angela","jack"]
    //dictionary
    var resorces = ["grain":100, "Ore":42, "wool":75]
    // method or function
//Method - describes what it can do
    func fortify()
    {
        print("Defences increased!")
    }
}


var myTown = Town()
print(myTown.citizens)
//string Interpleation of the struct
print("\(myTown.name) has \(myTown.resorces["grain"]!) bags of grain.")
// update the array in the struct
myTown.citizens.append("dick tracy")
//access the new count of the array
myTown.citizens.count
//access the func or method
myTown.fortify()



//init(){}

// this makes it able to be used for many towns
// is our blue print with blank properties
struct bTown
{
//Properties - which describes what things are like
    //Var
    let name: String
    //array
    var citizens: [String]
    //dictionary
    var resorces:[String:Int]
    
    // intializer
    init(name: String, citizens:[String], resorces:[String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resorces = resorces
    }
    
    
    // method or function
//Method - describes what it can do
    func fortify()
    {
        print("Defences increased!")
    }
    func logStatus()
    {
       
    }
}


// create another town with the initializer
var anotherTown = bTown(name: "NameDavoodoo", citizens: ["jam rock"], resorces: ["trees":100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
var ghostTown = bTown(name: "Blue Face", citizens: [], resorces: ["Tunbleweed":1])

anotherTown.citizens.append("Wilson")
ghostTown.fortify()







struct User
{
    //Properties - which describes what things are and like
    //Var
    var name: String
    let email: String?
    let followers: Int
    var isActive: Bool
    
    // intializer
    init(name: String, email:String?, followers:Int, isActive: Bool)
    {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }

    mutating func logStatus()
    {
        let Person = [name:isActive] //person is a dictionary to compare the person to their status
        // key and value is used to trigger the response of
        switch Person
        {
        case [name:true]:
            print("\(name) is working hard")
            case [name:false] :
            print("\(name) has left earth")
        default:
            print("wrong selection")
        }
    }
}

var musk1 = User(name: "Richard", email: nil, followers: 0, isActive: false)
musk1.logStatus()


// Diagnostic code - do not change this code
print("\nDiagnostic code (i.e., Challenge Hint):")
var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()
print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")
// sometime later
musk.isActive = false
musk.logStatus()





//Don't change this
var stockTickers: [String: String] = ["APPL" : "Apple Inc",
                                                                            "HOG": "Harley-Davidson Inc",
                                                                            "BOOM": "Dynamic Materials",
                                                                            "HEINY": "Heineken",
                                                                            "BEN": "Franklin Resources Inc"]

//Write your code here.


  

stockTickers["WORK"] = "Slack Technologies Inc"
 
 
 
 
 
 
 
 
 
 
 
 // Don't modify this
 print(stockTickers["WORK"]!)
 print(stockTickers["BOOM"]!)



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
