import UIKit

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
}


// create another town with the initializer
var anotherTown = bTown(name: "NameDavoodoo", citizens: ["jam rock"], resorces: ["trees":100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
var ghostTown = bTown(name: "Blue Face", citizens: [], resorces: ["Tunbleweed":1])

anotherTown.citizens.append("Wilson")
ghostTown.fortify()
