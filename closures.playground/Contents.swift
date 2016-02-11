//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var hello: () -> (String) = {
return "Hello!"
}
hello()

var double: (Int) -> (Int) = { x in
    return x*2
}
double(5)

var alsoDouble = double
alsoDouble(5)

/*
Declaring a closure:
{(parameters) -> returnType in
 statements
}
if the closure doesnt return a value:
{(parameters) in
statements
}
*/

var noParametersAndNoReturnValue: () -> () = {
    print("Hello!")
}

var noParameterAndReturnValue: () -> (Int) = {
    return 10
}

var parameterAndReturnValue: (Int) -> (Int) = { x in
    return x * 10
}

var multipleParameterAndReturnValue: (Int, Int) -> (Int) = { x, y in
    return (x+y) * 10
}


noParametersAndNoReturnValue = {
    print("Hello!")
}

noParameterAndReturnValue = {  () -> (Int) in
    return 10
}

parameterAndReturnValue = { (x: Int) -> (Int) in
    return x * 10
}

multipleParameterAndReturnValue = {(x: Int, y: Int) -> (Int) in
    return (x+y) * 10
}

multipleParameterAndReturnValue(1,2)


let closures = [
    parameterAndReturnValue,
    {(x: Int)-> Int in return x*2},
    {x in return x+2},
    {x in x*x},
    {$0 * 3}
]

for fn in closures {
     fn(2)
}

// Functions anc Closures.

func foo(x: Int) -> Int {
    return x + 3
}

let bar = { (x: Int) -> Int in
    return x + 3
}

let takesAndReturnsInt = [foo, bar]


//TypeAlias

typealias Integer = Int

let z: Integer = 42
let zz: Int = 42

typealias IntToInt = (Int) -> Int
typealias IntMaker = () -> Int


//Variable capture.

func makeCounter() -> (IntMaker) {
    
    var n = 0
    
    func adder () -> Int {
        n = n + 1
        return n
    }
    return adder
}

let counter1 = makeCounter()
let counter2 = makeCounter()

counter1()
counter1()
counter1()

counter2()















