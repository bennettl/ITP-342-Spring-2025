import UIKit

// FUNCTIONS

/**
 - Definition / Invocation stage
 - Inputs
    - Single, multiple
    - Argument labels
        - default, custom, omitting
 - Output
    - multiple outputs
 - Variadic parameters
 **/

//var greeting = "Hello, playground"

let firstName = "Bennett"
let lastName = "Lee"
print("Hello \(firstName) \(lastName)")


// DRY: Don't Repeat Yourself!!

// Definition - code is not execute
func greet() {
    let firstName = "Bennett"
    let lastName = "Lee"
    print("Hey there \(firstName) \(lastName)")
}

// Invocation
greet()
greet()
greet()
greet()
greet()


// Function with muliple inputs
//func greet(firstName: String, lastName: String){
//    print("Hey \(firstName) \(lastName)")
//}
//
//// Callsite
//greet(firstName: "John", lastName: "Smith")
//
//greet(firstName: "Amy", lastName: "Smith")

// Omit argument labels
//func greet(_ firstName: String, _ lastName: String){
//    print("Hey \(firstName) \(lastName)")
//}
//
//greet("John", "Smith")


// Customizing argument labels
//func divide(_ numberOne: Double, by numberTwo: Double){
//    print("\(numberOne / numberTwo)")
//}

//divide(numberOne: 10.0, numberTwo: 5.0)
//divide(10, by: 5.0)


// Output

func divide(_ numberOne: Double, by numberTwo: Double) -> Double{
    let result = numberOne / numberTwo
    print(result)
    return result
}

let number = divide(10.0, by: 2)
print(number + 1)

// Variadic parameters

func sum(numbers: Int...) -> Int {
    var result = 0

    for number in numbers {
        result += number
    }

    return result
}


sum(numbers: 1,2,3)
sum(numbers: 1,2,3,4,5,6)
sum(numbers: 1,2,3,4,5,6,10,20)


// CLASSES AND STRUCTURES

// Definition
struct Computer {

    // Properties
    let material: String
    let name: String
    let weight: Double

    // Field level initialization
    let battery = 80.0

    // Methods
    func turnOn() {
        print("Hello \(name)")
    }

    func turnOff() {
        print("Goodbye \(name)")
    }

    // Initializer - dont need to define our own initialzers for structs, because it comes with "memberwise initialzer"
//    init(material: String, name: String, weight: Double){
//        self.material = material
//        self.name = name
//        self.weight = weight
//    }
}

// Instantiation - creating an instance of a structure
let macbook = Computer(material: "Metal", name: "Macbook Pro", weight: 10.0)

// Dot notation to access properties to invoke methods
macbook.material
macbook.turnOn()

let pc = Computer(material: "Plastic", name: "Lenovo", weight: 10.0)
pc.material
pc.turnOn()


struct Rectangle {
    // Store properties
    var width: Double
    var height: Double

    // Computed properties
    var area: Double {
        get {
            return width * height
        }

        set(newArea){
            width = newArea / 2.0
            height = newArea / 2.0
        }
    }


//    func getArea() -> Int{
//        return width * height
//    }
}

var rect = Rectangle(width: 20, height: 10)
rect.area = 20.0
//rect.getArea()


struct Student {
    @MainActor static var NumberOfStudents = 0

    // Instance property
    let name : String

    @MainActor
    init(name: String) {
        self.name = name
        Student.NumberOfStudents += 1
    }
}

let john = Student(name: "John")
john.name

Student.NumberOfStudents

let amy = Student(name: "Amy")
Student.NumberOfStudents
