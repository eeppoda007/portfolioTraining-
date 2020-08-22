/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias called **Attack** with named values for name and damage
 2. Create a type alias called **ScoreClosure** with a integer array as parameter and no return value
 3. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 4. Write an overloaded version of **attackEnemy** with a parameter of type Attack and returns a boolean
 5. Use both **attackEnemy** methods
 6. Write a function called **fetchPlayerScores** that has a closure parameter of type ScoreClosure and use it to return an array of scores
 7. Call the **fetchPlayerScores** closure, loop through the scores and print out an interpolated string
 */
// 1
typealias Attack = (name: String, damage: Int)
// 2
typealias ScoreClosure = ([Int]) -> Void

// 3
func attackEnemy(hits: Int) -> String {
    return "You got hit \(hits) times"
}
// 4
func attackEnemy(wepond: String, hits: Int) -> Bool{
    print("You got hit \(hits) times")
    return true
}
// 5
attackEnemy(hits: 50)
var enemyWasAttacked = attackEnemy(wepond: "Hammer", hits: 10)
// 6
func fetchPlayersScores(ScoreClosure: ([Int]) -> Void) {
    let scores = [10, 55, 33, 12]
    ScoreClosure(scores)
}
// 7
fetchPlayersScores { (scores) in
    for score in scores {
        print(" This Players score is  -> \(score)")
    }
}
//: [Previous Topic](@previous)
