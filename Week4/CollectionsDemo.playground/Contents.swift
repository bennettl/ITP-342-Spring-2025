import UIKit


// Arrays

// Creating an array

// Explcit type
//var names : Array<String> = ["Bennett", "John", "Sarah", "Jenn"]
//var names : [String] = ["Bennett", "John", "Sarah", "Jenn"]

var names = ["Bennett", "John", "Sarah", "Jenn"]


// Access elements in an array

names[0]
names[2]

// Enumeration
for name in names{
    print("Name: \(name)")
}

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Modifying an array

// Adding / Insert
names.append("Sam")
names.insert("Kylie", at: 1)


// Delete
names.remove(at: 2)

// Other misc
names.count
names.isEmpty
names.contains("Sam")

// Dictionary

// Creation

// Explcit type
//var airports : Dictionary<String, String> = [:]

// Shorthand
var airports : [String:String] = [
    "SFO": "San Francisco",
    "JFK": "New York",
    "LAX": "Los Angeles"
]

// Access data in dictionary
airports["SFO"]

for (key, value) in airports {
    print("key \(key), value \(value)")
}

let airport = airports["SFO"]

// Mutating the dictionary

// Set key value pair
airports["LBX"] = "Long Beach"
airports

// Remove key value pair
airports["JFK"] = nil
airports
