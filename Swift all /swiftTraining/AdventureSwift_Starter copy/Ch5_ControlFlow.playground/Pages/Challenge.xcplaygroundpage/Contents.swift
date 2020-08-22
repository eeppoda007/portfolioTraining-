/*:
 # Chapter Challenge: Game Conditions
 ---
 ### Tasks
 1. Create an optional called **currentWeapon** and assign it a string value
 2. Use optional binding to access **currentWeapon**
 3. Creat a variable called **currentEXP** and assign it an integer value
 4. Use a `switch` statement with **currentEXP** to evaluate different cases
 5. Create a dictionary called **playerLevels** and assign it some key-value pairs of type string and integer
 6. Use a `for-in` loop to iterate over **playerLevels** and print out its key-value pairs in an interpolated string
 7. Add a guard statement inside the `for-in` loop to mamke sure each player is at least level 1 to proceed
 */
// 1
var currentWeapon: String? = "Glock"
// 2
if let weapon = currentWeapon {
    print("You found a \(weapon)")
}else{
    print("I am unarmed")
}

// 3
var currentEXP = 10
// 4
switch currentEXP {
case 1...10:
    print("This is in a scale of 1-10")
    case 11...20:
    print("This is way over the 1-10 scale")
default:
    print("This makes no scence your crazy")
}
// 5
var playerLevels = ["Batters": 3, "Pitchers": 5, "Benchwarmers": 2, "Catchers": 0]
// 6
for (key,value) in playerLevels {
   
    
    print(" The player is a \(key) and their possition is \(value) on the team")
}
// 7
for (key,value) in playerLevels {
    guard value >= 1 else {
        print("The player \(key) must have a value 1 or greater")
        continue
    }
    
    print(" The player is a \(key) and their possition is \(value) on the team")
}
//: [Previous Topic](@previous)
