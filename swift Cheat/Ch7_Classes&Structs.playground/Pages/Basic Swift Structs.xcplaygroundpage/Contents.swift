/*:
 # Basic Swift Structs
 ---
 
 ## Topic Essentials
 Swift structures share a very similar syntax and functionality, but they are useful for creating different kinds of instances. While classes are well suited to complex data structures and are passed by reference, structs are passed by value and better suited to creating simple instances that don't need inheritance or reference capabilities.
 
 ### Objectives
 + Declare a basic struct called **Level**
 + Assign a few instance properties
 + Add a read-only computed property
 */
// Declaring a new struct
struct Level {
    
    // instance properties
    let levelID: Int
    var levelObjective: String
    
    // Optional
    var hiddenArea: String?
    
    // computed properties
    var levelDescription: String {
        return "Level ID: \(levelID) -> Objective: \(levelObjective)"
    }
}

var dungeon = Level(levelID: 1, levelObjective: "Clear the big boss", hiddenArea: nil)
print(dungeon.levelDescription)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
