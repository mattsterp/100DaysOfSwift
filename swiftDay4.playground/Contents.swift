// For Loops
// Swift has a few ways of writing loops, but their underlying mechanism is the same: run some code repeatedly until a condition evaluates as false.

// The most common loop in Swift is a for loop: it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.

// For example, here’s a range of numbers:
let count = 1...10

// we can use a for loop to print each item like this:
for number in count {
    print("Number is \(number)")
}


// We can do the same thing with arrays:
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple music")
}

// If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loop
// A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.

// For example, we could use a while loop to simulate a child counting in a game of hide and seek: we start at one, count up to and including 20 while printing each number out, then after the loop print “Ready or not”.

// Here’s how that looks in Swift:
//var number = 1
//
//while number <= 20 {
//    print(number)
//    number += 1
//}

print("Ready or not here I come")

// Repeat loops
// The third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it: it’s called the repeat loop, and it’s identical to a while loop except the condition to check comes at the end.

// So, we could rewrite our hide and seek example like this:
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not here I come")

// Because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once, whereas while loops check their condition before their first run.

// For example, this print() function will never be run, because false is always false:
while false {
    print("this is false")
}

// Xcode will even warn us that the print() line will never be executed.

// On the other hand, this print() function will be run once, because repeat only fails the condition after the loop runs:

repeat {
    print("This is false")
} while false

// Exiting loops

// You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch:

var countDown = 10
//
//while countDown >= 0 {
//    print(countDown)
//    countDown -= 1
//}
//
//print("Blast off!")

// In this case, the astronaut in command gets bored part-way through the countdown and decides to skip the remainder and launch straight away:

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}
//  With that change, as soon as countDown reaches 4 the astronaut’s message will be printed, and the rest of the loop gets skipped.


