// Day2 arrays, dictionaries, sets, and enums

// Arrays
// Arrays are collections of values that are stored as a single value. For example, John, Paul, George, and Ringo are names, but arrays let you group them in a single value called The Beatles.
// In code, we write this:
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// That last line makes the array: it starts and ends with brackets, with each item in the array separated by a comma.
// You can read values from an array by writing a number inside brackets. Array positions count from 0, so if you want to read “Paul McCartney” you would write this:
beatles[1]

// Be careful: Swift crashes if you read an item that doesn’t exist. For example, trying to read beatles[9] is a bad idea.
// Note: If you’re using type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool].

// Sets
// Sets are collections of values just like arrays, except they have two differences:

// Items aren’t stored in any order; they are stored in what is effectively a random order.
// No item can appear twice in a set; all items must be unique.
// You can create sets directly from arrays, like this:

let colors = Set(["red", "green", "blue"])
// When you look at the value of colors inside the playground output you’ll see it doesn’t match the order we used to create it. It’s not really a random order, it’s just unordered – Swift makes no guarantees about its order. Because they are unordered, you can’t read values from a set using numerical positions like you can with arrays.

// If you try to insert a duplicate item into a set, the duplicates get ignored. For example:

let colors2 = Set(["red", "green", "blue", "red", "blue"])
//The final colors2 set will still only include red, green, and blue once.

// Tuples
// Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

// You can’t add or remove items from a tuple; they are fixed in size.
// You can’t change the type of items in a tuple; they always have the same types they were created with.
// You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
// Tuples are created by placing multiple items into parentheses, like this:

var name = (first: "Taylor", last: "Swift")
//You then access items using numerical positions starting from 0:

name.0
// Or you can access items using their names:

name.first
// Remember, you can change the values inside a tuple after you create it, but not the types of values. So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.

// Arrays vs Sets vs Tuples
// Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.

// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let set = Set(["aardvark", "astronaut", "azalea"])
// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
// Arrays are by far the most common of the three types.

// Dictionaries
// Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.

// The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
// Just like arrays, dictionaries start and end with brackets and each item is separated with a comma. However, we also use a colon to separate the value you want to store (e.g. 1.78) from the identifier you want to store it under (e.g. “Taylor Swift”).

// These identifiers are called keys, and you can use them to read data back out of the dictionary:

heights["Taylor Swift"]
// Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].

// Dictionary default values
// If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all. While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.
//
// To demonstrate this, let’s create a dictionary of favorite ice creams for two people:
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

// We can read Paul’s favorite ice cream like this:
favoriteIceCream["Paul"]

// But if we tried reading the favorite ice cream for Charlotte, we’d get back nil, meaning that Swift doesn’t have a value for that key:
favoriteIceCream["Charlotte"]

// We can fix this by giving the dictionary a default value of “Unknown”, so that when no ice cream is found for Charlotte we get back “Unknown” rather than nil:
favoriteIceCream["Charlotte", default: "Unknown"]

// Creating empty collections
// Arrays, sets, and dictionaries are called collections, because they collect values together in one place.

// If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this:
var teams = [String: String]()
// We can then add entries later on, like this:
teams["Paul"] = "Red"
// Similarly, you can create an empty array to store integers like this:
var results = [Int]()
// The exception is creating an empty set, which is done differently:
var words = Set<String>()
var numbers = Set<Int>()
// This is because Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.

// If you wanted, you could create arrays and dictionaries with similar syntax:
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

// Enumerations
// Enumerations – usually called just enums – are a way of defining groups of related values in a way that makes them easier to use.

// For example, if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as strings:
let result = "failure"
// But what happens if someone accidentally uses different naming?

 
