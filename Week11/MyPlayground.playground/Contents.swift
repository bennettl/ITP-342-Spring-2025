import UIKit


struct Quote : Codable {
    let message: String
    let author: String
}

let quote = Quote(message: "This is a message", author: "John")

// Goal: Convert Quote object (native Swift object) into JSON formatted string

// 1. Models need to conform to the Codable protocol
// 2. Use a custom encoder to encode

do {
    let encoder = JSONEncoder()
    let quoteString = try encoder.encode(quote)
    print(quoteString)
} catch {
    print(error)
}
