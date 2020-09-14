
struct MyOptional {
var property  = 123
func method() {
    print("i am the structs's method")
}

}


let myOptional2: String?
let myOptional: MyOptional?
myOptional2 = nil
myOptional = MyOptional()
//Optional Chaining
myOptional?.method()
myOptional?.property

// checking for nil value
if myOptional2 != nil{
    //Force unwrap
   let text = myOptional2!
}



// optional Binding
if let safeOptional = myOptional2{
    let text: String = safeOptional
    let text2: String = safeOptional
}else{
    print("myOptional was found to be nil.")
}


// nil coalescing Operator
let text: String = myOptional2 ?? " I am the default value"


print(text)



    
    

