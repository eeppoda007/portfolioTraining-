
import UIKit

var fruits = ["Apple", "Banana", "Melon", "Pear"]

print(fruits)

fruits[0]
print(fruits[3])
fruits.count

fruits.insert("Lemon", at: 2)
print(fruits)
fruits.count

fruits.remove(at: 0)
print(fruits)
fruits.count

fruits.insert("Apple", at: 4)
print(fruits)
fruits.sort()
print(fruits)
