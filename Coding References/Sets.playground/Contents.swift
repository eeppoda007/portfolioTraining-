
import UIKit

var set1:Set = ["Banana", "Apple", "Pear", "Grape"]
var set2:Set = ["Carrot", "Banana", "Apple", "Watermelon", "Grape"]

let sameValues = set1.intersection(set2)

print(sameValues)

print(set1)

set1.count
set1.insert("Lemon")
set1.count

print(set1)

set1.sorted()
print(set1.sorted())

set1.remove("Apple")

print(set1.sorted())
