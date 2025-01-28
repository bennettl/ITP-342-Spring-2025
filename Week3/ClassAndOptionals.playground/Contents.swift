import UIKit

var greeting = "Hello, playground"


class Person {
    init() {
        print("Hello")
    }

    fileprivate func talkToYourself(){

    }

    deinit {
        talkToYourself()
        print("Goodbye cruel world...")
    }
}


let john = Person()
john.talkToYourself()

// Shape.swift

struct Point {
    let x: Int
    let y: Int
}

struct Rectangle {
    let center: Point
}

struct Circle {
    let center: Point
}



// Billion dollar mistake -> aka NullPointerException

// 1. Everything needs to have a value

var favoriteNumber : Int = 42
print(favoriteNumber)

// 2. If you do need to represent null values, then wrap it in an Optional type
    // Generic is a data type that wraps around other data types
        // Array
        // Map / Dictionaries

//var favoriteNumberOptional : Optional<Int> = nil
var favoriteNumberOptional : Int? = nil
favoriteNumber = 100



var name: String? = "Bennett"
print(name)

// Accessing data from an optional type
// 1. Force unwrapping
// 2. Implicility unwrapped optional
// 3. Conditional wrapping
// 4. Nil coalescing operator
// 5. Optional chaining


// 1. Force unwrapping
// When an optional is "nil", your app crashes
// Sometimes, your app doesn't make sense to continue without a value, and you want early indication warning that's clear
print(name!)

// 2. Implicility unwrapped optional
//var userId: String! = nil
//print(userId)
//print(userId)
//print(userId)
//print(userId)

// 3. Conditional wrapping

name = nil
if let n = name {
    print("Conditionally unwrapped \(n)")
} else {
    // log to API servers, ping the on call engineer
}


// 4. Nil coalescing operator
var otherName = name ?? "John"


// 5. Optional chaining


func printName () {
    var name: String? = "John"

    // Early return pattern
    guard let name else {
        return
    }

    // access name
    print(name)


//    // Rightward shift of our code is consider to be an anti-pattern
//    if let name = name {
//        print(name)
//        // If statement
//            // switch
//                // for loop
//                    // while
//                        // if statement
//                            // 🤷🏻‍♂️
//    }

}
