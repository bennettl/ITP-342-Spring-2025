import UIKit


@propertyWrapper
struct Uppercased {
    var innerValue = ""

    var wrappedValue: String {
        get {
            return innerValue
        }

        set {
            innerValue = newValue.uppercased()
        }
    }
}

struct Person {
    @Uppercased var name: String
    let age: Int

    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
}

var john = Person(name: "John", age: 20)
john.name = "Kyle"
john.name



enum VendingMachineError : Error {
    case outOfStock
    case insufficientFunds
}

func grabItem(id: String) throws -> String {

    if id == "0"{
        throw VendingMachineError.outOfStock
    }

    if id == "1"{
        throw VendingMachineError.insufficientFunds
    }

    return "burrito"
}


// Error handling

// 1. Don't do it, supress error handling
//try! grabItem(id: "0")

// 2. Handle it with do / catch
do {
    try grabItem(id: "3")
    try grabItem(id: "2")
    try grabItem(id: "1")
} catch VendingMachineError.insufficientFunds {
    print("show a user friendly error message")
}  catch VendingMachineError.outOfStock {
    print("ping supplier we need more burritos")
} catch {
    print("an error we haven't defined")
}



//var party: Array<Person> = [
//    Person(name: "John", age: 1),
//    Person(name: "Amy", age: 2),
//    Person(name: "Sarah", age: 3)
//]
//
//func orderByName(personOne: Person, personTwo: Person) -> Bool {
//    return personOne.name < personTwo.name
//}
//party.sort(by: orderByName)
//
//for person in party {
//    print("Name : \(person.name)")
//}


let name : Array<String> = [
    "Kyle",
    "Sammy",
    "Angela",
    "Jessica"
]

//"Z" > "A"


// Given itemOne and itemTwo, return true if itemOne should come first
func alphabetical(itemOne: String, itemTwo: String) -> Bool {
    return itemOne < itemTwo
}

// Sorting
name.sorted(by: alphabetical)

//name.sorted(by: <#T##(String, String) throws -> Bool#>)

// Create a closure expresssion
name.sorted(by: { ( itemOne : String, itemTwo: String) -> Bool in
    return itemOne < itemTwo
})


// Type inference
name.sorted(by: { (itemOne, itemTwo) in
    return itemOne < itemTwo
})

// Shorthand argument label
name.sorted(by: {
    return $0 < $1
})

// Implicit return
name.sorted(by: {
    $0 < $1
})

// Trailing closure syntax
name.sorted { $0 < $1 }


