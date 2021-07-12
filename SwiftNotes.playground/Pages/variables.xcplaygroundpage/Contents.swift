//: [Previous](@previous)
/*: Foundation provides access to essential data types, collections, and operating-system services to define the base layer of functionality for your app.
[Docs: Foundation](https://developer.apple.com/documentation/foundation)
 ### var and let
 
 Use **var** to make a variable and **let** to make a constant.
 A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that greeting is a string because its initial value is an string.
 */
import Foundation
var greeting = "Hello, matt"
// greeting can be changed it is variable
greeting = "Hello, Maia!"

let goodbye = "So long!"
// goodbye cannot be changed, it is constant
//goodbye = "See ya!"

/*:
 ###Explicit and implicit types
 
 If the initial value doesn’t provide enough information (or if isn’t an initial value), specify the type by writing it after the variable, separated by a colon.
 */
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
//: [Next](@next)
