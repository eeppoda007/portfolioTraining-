/*:
 # WHILE Loops
 ---
 
 ## Topic Essentials
 While loops are exactly what they sound like. While some defined condition is true, do something. It’s really as simple as that. There are two types of while loops, while loops check their condition at the beginning of each loop, and repeat-while loops check their condition at the end.
 
 For cases when you don’t know the number of times you will need to perform some action, like with a for-in loop, while loops are extremely useful.
 
 ### Objectives
 + Create a variable called **playerHP** and assign it a value of 5
 + Use a standard while loop to print out **playerHP** until it is at 0
 + Use a repeat-while loop to print out **playerHP** until it is at 0 and see the different behavior
 */
// While loop
var playerHp = 5

//while playerHp > 0 {
//   playerHp -= 1 // decromented by 1 to stop infanet loop
//    print("Hp at \(playerHp)")
//}


// Repeat-while loop

repeat {
    playerHp -= 1
    print("Hp at \(playerHp)")
}while playerHp >= 0

/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
