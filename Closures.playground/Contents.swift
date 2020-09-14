import UIKit

func calculator(n1: Int, n2: Int, operation: (Int , Int) -> Int) -> Int{
    return operation (n1,n2)
}

func add(no1: Int, no2: Int ) -> Int{
    return no1 + no2
}

func subtract(no1: Int, no2: Int ) -> Int{
    return no1 - no2
}

func multiply(no1: Int, no2: Int ) -> Int{
    return no1 * no2
}

func divide(no1: Int, no2: Int ) -> Int{
    return no1 / no2
}



calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)
calculator(n1: 2, n2: 3, operation: subtract)
calculator(n1: 2, n2: 3, operation: divide)


//closures below
    
    
//{ (no1: Int, no2: Int ) -> Int in
//    return no1 + no2
//}

calculator(n1: 10, n2:200564) { $0 * $1 }// simplified
calculator(n1: 10, n2:200564, operation: {(no1: Int, no2: Int ) in no1 + no2})//extended


// real world experience
let array = [6,2,3,9,4,1]

func addOne(n11: Int) -> Int{
    return n11 + 1
}
// reduced closure
print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
print(newArray)
