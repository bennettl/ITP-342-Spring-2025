import UIKit



// Explain your code in plain English

/*
 This
 is
 a multline
 comment
 */

// Data Types

// 1. What type of operations can you do with it
// 2. What is the storage requirements of the piece of data

// Character
"a"
"0"
"🔥"

// String
"ITP 342"
"Hello there"
"true"

// Int
-10
10
0

// Double
10.10
-10.10

// Boolean
true
false

// Is empty characters "" a string or character

// Constant or variable

// Convention: Use constant by default, variables by expcetions

//let favoriteNumber : Int = 100

var name: String = "John"
name = "Johnny"

// Less code is better, no code is the best
// People spend more time reading code, than writing code

// Type Inference

let favoriteNumber = 100

let characterOrString = ""


// Double vs Float
// Double values are more precise, hold double the amount of digits than a float
let amount: Float = 42.0



// My favorite number is 100
// String interpolation
"My favorite number is \(favoriteNumber)"

5 + 10
10 - 5
2 * 20
30 / 7.0

favoriteNumber > 100
favoriteNumber == 100

favoriteNumber > 100 || favoriteNumber < 20

// Control flow
// 1. Conditionally execute a piece of logic
// 2. Repeatedly execute a piece of logic

// 1a. If statement
if favoriteNumber > 100 {
    print("favorite number is greater than 100")
} else if favoriteNumber > 50 {
    print("favorite number is greater than 50")
} else {
    print("favorite number is NOT greater than 100")
}

// DRY: Don't repeat yourself

// 1b. switch
if favoriteNumber >= 80 && favoriteNumber == 100 {
    print("favorite number is equal to 100")
} else if favoriteNumber == 50 {
    print("favorite number is equal to 50")
} else if favoriteNumber == 51 {
    print("favorite number is equal to 51")
} else {
    print("favorite number is none of the above")
}

switch favoriteNumber {
case 80...100:
    print("A favorite number is between 80 to 100")
case 50:
    print("B favorite number is equal to 50")
case 51:
    print("favorite number is equal to 51")
default:
    print("favorite number is none of the above")
}



for whateverYouWant in 10...20 {
    print("The index is \(whateverYouWant)")
}


for character in "Bennett" {
    print("The character is \(character)")
}

// Keep going until the condition is false
var number = 0
while number < 10 {
    print("the number is \(number)")
    number += 1
}
