import UIKit


class Person {
    let name : String
    init(name: String) {
        self.name = name
    }
}


// Class are reference types

let p1 = Person(name: "Amy")

let p2 = Person(name: "John")

let p3 = p1

let p4 = p2
