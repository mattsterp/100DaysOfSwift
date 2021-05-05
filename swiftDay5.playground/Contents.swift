// Functions
// Functions let us re-use code, which means we can write a function to do something interesting then run that function from lots of places. Repeating code is generally a bad idea, and functions help us avoid doing that.

// To start with, we’re going to write a function that prints help information for users of our app. We might need this anywhere in our app, so having it as a function is a good idea.

// Swift functions start with the func keyword, then your function name, then open and close parentheses. All the body of your function – the code that should be run when the function is requested – is placed inside braces.

// Let’s write the printHelp() function now:
func printHelp() {
    let message = """
        Welcome to my app!
        
        Run  this app inside of a directory of images and
        MyApp will resize them all into thumbnails
        """
}

// We can now run that using printHelp() by itself:
printHelp()
// Running a function is often referred to as calling a function.

// Functions become more powerful when they can be customized each time you run them. Swift lets you send values to a function that can then be used inside the function to change the way it behaves. We’ve used this already – we’ve been sending strings and integers to the print() function, like this:
print("Hello, world")

// Values sent into functions this way are called parameters.

// To make your own functions accept parameters, give each parameter a name, then a colon, then tell Swift the type of data it must be. All this goes inside the parentheses after your function name.

// For example, we can write a function to print the square of any number:
//func square(number: Int) {
//    print(number * number)
//}
// That tells Swift we expect to receive an Int, and it should be called number. This name is used both inside the function when you want to refer to the parameter, but also when you run the function, like this:
//square(number: 8)
// As well as receiving data, functions can also send back data. To do this, write a dash then a right angle bracket after your function’s parameter list, then tell Swift what kind of data will be returned.

// Inside your function, you use the return keyword to send a value back if you have one. Your function then immediately exits, sending back that value – no other code from that function will be run.

// We could rewrite our square() function to return a value rather than print it directly:
//func square(number: Int) -> Int {
//    return number * number
//}
// Now we can grab that return value when the function is run, and print it there:
//let result = square(number: 8)
//print(result)
// If you need to return multiple values, this is a perfect example of when to use tuples.
// We wrote our square() function like this:
func square(number: Int) -> Int {
    return number * number
}
// That names its parameter number, so we can use number inside the function to refer to it, but we must also use the name when running the function, like this:
let result = square(number: 8)
// Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

// To demonstrate this, here’s a function that uses two names for its string parameter:
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
// The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables a sensible name inside the function, but means calling the function reads naturally:

sayHello(to: "Taylor")
// You might have noticed that we don’t actually send any parameter names when we call print() – we say print("Hello") rather than print(message: "Hello").

// You can get this same behavior in your own functions by using an underscore, _, for your external parameter name, like this:
func greet(_ person: String) {
    print("Hello, \(person)!")
}
// You can now call greet() without having to use the person parameter name:

greet("Taylor")

// This can make some code more natural to read, but generally it’s better to give your parameters external names to avoid confusion. For example, if I say setAlarm(5) it’s hard to tell what that means – does it set an alarm for five o’clock, set an alarm for five hours from now, or activate pre-configured alarm number 5?

// The print() function prints something to the screen, but always adds a new line to the end of whatever you printed, so that multiple calls to print() don’t all appear on the same line.

// You can change that behavior if you want, so you could use spaces rather than line breaks. Most of the time, though, folks want new lines, so print() has a terminator parameter that uses new line as its default value.

// You can give your own parameters a default value just by writing an = after its type followed by the default you want to give it. So, we could write a greet() function that can optionally print nice greetings:
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
// That can be called in two ways:
greet("Taylor")
greet("Taylor", nicely: false)

// Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type. The print() function is actually variadic: if you pass lots of parameters, they are all printed on one line with spaces between them:
print("Haters", "gonna", "hate")

// You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.

// Inside the function, Swift converts the values that were passed in to an array of integers, so you can loop over them as needed.

// To try this out, let’s write a square() function that can square many numbers:
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

// Now we can run that with lots of numbers just by passing them in separated by commas:
square(numbers: 1, 2, 3, 4, 5)
// Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

// First we need to define an enum that describes the errors we can throw. These must always be based on Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll throw an error if the user tries an obvious password:
enum PasswordError: Error {
    case obvious
}

// Now we’ll write a checkPassword() function that will throw that error if something goes wrong. This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.

// Here’s that in Swift:
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// Running throwing functions
