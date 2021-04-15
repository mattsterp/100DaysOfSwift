// 100 days of swift
// day 1 variables, simple data types, and string interpolation


// variables
var str = "Hello, playground"
// variables can be reassigned when not declared using the let keyword
// strings and integers
var str3 = "This is a string"
var int = 88
var population = 8_000_000
// multi line strings use triple quotes
//Swift is very particular about how you write those quote marks: the opening and closing triple must be on their own line, but opening and closing line breaks won’t be included in your final string.
var str4 = """
This goes
over multiple
lines
"""
//If you only want multi-line strings to format your code neatly, and you don’t want those line breaks to actually be in your string, end each line with a \, like this:

var str5 = """
This goes \
over multiple \
lines
"""
// doubles
//“Double” is short for “double-precision floating-point number”, and it’s a fancy way of saying it holds fractional values such as 38.1, or 3.141592654.

//Whenever you create a variable with a fractional number, Swift automatically gives that variable the type Double. For example:

var pi = 3.141
//Doubles are different from integers, and you can’t mix them by accident.

//As for booleans, they are much simpler: they just hold either true or false, and Swift will automatically assign the boolean type to any variable assigned either true or false as its value.

// boolean example:
var awesome = true
// string interpolation
//You’ve seen how you can type values for strings directly into your code, but Swift also has a feature called string interpolation – the ability to place variables inside your strings to make them more useful.

//You can place any type of variable inside your string – all you have to do is write a backslash, \, followed by your variable name in parentheses. For example:

var score = 85
var str6 = "Your score was \(score)"
//As you can see in the playground output, that sets the str variable to be “Your score was 85”.

//You can do this as many times as you need, making strings out of strings if you want:

var results = "The test results are here: \(str6)"
//As you’ll see later on, string interpolation isn’t just limited to placing variables – you can actually run code inside there.
// constants
//very often you want to set a value once and never change it, and so we have an alternative to the var keyword called let.

//The let keyword creates constants, which are values that can be set once and never again. For example:

let taylor = "swift"
//If you try to change that, Xcode will refuse to run your code. It’s a form of safety: when you use constants you can no longer change something by accident.

//When you write your own Swift code, you should always use let unless you specifically want to change a value. In fact, Xcode will warn you if you use var then don’t change the variable.
// type annotations

//Swift assigns each variable and constant a type based on what value it’s given when it’s created. So, when you write code like this Swift can see it holds a string:

let str7 = "Hello, playground"
//That will make str a string, so you can’t try to assign it an integer or a boolean later on. This is called type inference: Swift is able to infer the type of something based on how you created it.

//If you want you can be explicit about the type of your data rather than relying on Swift’s type inference, like this:

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
//Notice that booleans have the short type name Bool, in the same way that integers have the short type name Int.
