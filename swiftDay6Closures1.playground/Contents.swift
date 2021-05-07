// Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.

// Functions used in this way are called closures, and although they work like functions they are written a little differently.

// Let’s start with a simple example that prints a message:
//
//That effectively creates a function without a name, and assigns that function to driving. You can now call driving() as if it were a regular function, like this:

// driving()
// When you create closures, they don’t have a name or space to write any parameters. That doesn’t mean they can’t accept parameters, just that they do so in a different way: they are listed inside the open braces.

// To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.

// For example, we could make a closure that accepts a place name string as its only parameter like this:
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
// One of the differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this:
//driving("London")

// Closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the in keyword.

// To demonstrate this, we’re going to take our driving() closure and make it return its value rather than print it directly. Here’s the original:

//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}

// We want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:
//let drivingWithReturn = {(place: String) -> String in
//    return "I'm going to \(place)in my car"
//}

// We can now run that closure and print its return value:
//let message = drivingWithReturn("London")
//print(message)

//Because closures can be used just like strings and integers, you can pass them into functions. The syntax for this can hurt your brain at first, so we’re going to take it slow.

// First, here’s our basic driving() closure again

let driving = {
    print("I'm driving in my car")
}
// If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.

// So, we can write a travel() function that accepts different kinds of traveling actions, and prints a message before and after:

//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
// We can now call that using our driving closure, like this:

//travel(action: driving)

// If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.

// To demonstrate this, here’s our travel() function again. It accepts an action closure so that it can be run between two print() calls:
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}

// Because its last parameter is a closure, we can call travel() using trailing closure syntax like this:

travel() {
    print("I'm driving in my car")
}
// In fact, because there aren’t any other parameters, we can eliminate the parentheses entirely:
travel {
    print("i'm driving in my car")
}
// Trailing closure syntax is extremely common in Swift, so it’s worth getting used to.

// Using closures as parameters when they accept parameters
// This is where closures can start to be read a bit like line noise: a closure you pass into a function can also accept its own parameters.

// We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the () with the types of any parameters that your closure should accept.

// To demonstrate this, we can write a travel() function that accepts a closure as its only parameter, and that closure in turn accepts a string:
//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}

// Now when we call travel() using trailing closure syntax, our closure code is required to accept a string:

//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}

// Using closures as parameters when they return values
// We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can replace that Void with any type of data to force the closure to return a value.

// To demonstrate this, we can write a travel() function that accepts a closure as its only parameter, and that closure in turn accepts a string and returns a string:
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Now when we call travel() using trailing closure syntax, our closure code is required to accept a string and return a string:

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names


