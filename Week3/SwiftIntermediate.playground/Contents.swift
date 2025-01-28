import UIKit

//var greeting = "Hello, playground"

// Protocol

protocol Drivable {
    func turnLeft()
    func turnRight()
    func accelerate()
    func stop()
    func honk() -> String
}

// structures and classes
struct Mazda : Drivable {
    func brake() {

    }

    func turnLeft() {
    }
    
    func turnRight() {
    }
    
    func accelerate() {
    }
    
    func stop() {
    }

    func honk() -> String {
        return "Honking from a Mazda"
    }
}

struct Lexus : Drivable {
    func turnLeft() {
    }

    func turnRight() {
    }

    func accelerate() {
    }

    func stop() {
    }

    func honk() -> String {
        return "Honking from a Lexus"
    }
}


var vehicles: [Drivable] = [Mazda(), Lexus(), Mazda()]

for vehicle in vehicles {
    vehicle.turnLeft()
}


var number = 5

extension Int {
    var squared: Int {
        return self * self
    }
}

number.squared
number.squared
number.squared

//extension String {
//    var isValidEmail: Bool {
//        
//    }
//
//    var isValidZipCode: Bool {
//
//    }
//}
