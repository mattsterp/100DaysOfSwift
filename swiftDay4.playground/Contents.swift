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

// Exiting Multiple Loops
// If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.

// As an example, we could write some code to calculate the times tables from 1 through 10 like this:

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

// If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

// Second, add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// With a regular break, only the inner loop would be exited – the outer loop would continue where it left off.

// Skipping items
// As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead.

// To try this out, we can write a loop from 1 through 10, then use Swift’s remainder operator to skip any numbers that are odd:

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// Infinite Loops

// It’s common to use while loops to make infinite loops: loops that either have no end or only end when you’re ready. All apps on your iPhone use infinite loops, because they start running, then continually watch for events until you choose to quit them.

// To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Warning: Please make sure you have a check that exits your loop, otherwise it will never end.

// As an example, we’re going to use while true to print the music of John Cage’s piece 4’33” – if you didn’t know, it’s famous because it’s 4 minutes and 33 seconds of complete silence.

// We can write the “music” for this piece using while true, with a condition that exits the loop when we’ve gone around enough times:

//var counter = 0
//
//while true {
//    print(" ")
//    counter += 1
//
//    if counter == 273 {
//        break
//    }
//}

// Looping Summary

// Loops let us repeat code until a condition is false.
// The most common loop is for, which assigns each item inside the loop to a temporary constant.
// If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
// There are while loops, which you provide with an explicit condition to check.
// Although they are similar to while loops, repeat loops always run the body of their loop at least once.
// You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
// You can skip items in a loop using continue.
// Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!

