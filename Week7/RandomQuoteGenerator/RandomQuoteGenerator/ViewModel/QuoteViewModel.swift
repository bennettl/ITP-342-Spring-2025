//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/24/25.
//

import Foundation
import Observation

@Observable
class QuoteViewModel {
    var quotes: [Quote] {
        didSet {
            save()
        }
    }

    var randomQuote: Quote  {
        return quotes[randomIndex]
    }

    var randomIndex: Int = 0

    var quotesPath: URL

    init() {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        quotesPath = URL(string:"\(documentsDirectory)/quotes.json")!

        quotes = []

        load()
    }

    func generateRandomQuote() {
        var newIndex = Int.random(in: 0..<quotes.count)

        while newIndex == randomIndex {
            newIndex = Int.random(in: 0..<quotes.count)
        }

        randomIndex = newIndex
    }

    func getIndex(for quote: Quote) -> Int? {
        for (index, item) in quotes.enumerated() {
            if item.id == quote.id {
                return index
            }
        }

        return nil
    }

    // Create, read, update, delete (CRUD)
    func append(quote: Quote){
        quotes.append(quote)
    }

    func get(at index: Int) -> Quote?{
        // Validation, early return
        if index < 0 || index > quotes.count - 1 {
            return nil
        }

        return quotes[index]
    }

    func update(quote: Quote, at index: Int) {
        // Validation, early return
        if index < 0 || index > quotes.count - 1 {
            return
        }

        quotes[index] = quote
    }

    func remove(at index: Int) {
        // Validation, early return
        if index < 0 || index > quotes.count - 1 {
            return
        }

        quotes.remove(at: index)
    }

    // Write our array of quotes into the file system
    private func save() {
        // Goal: Convert array of Quote objects (native Swift object) into JSON formatted string

        // 1. Models need to conform to the Codable protocol
        // 2. Use a custom encoder to encode

        do {
            let encoder = JSONEncoder()
            let quoteBytes = try encoder.encode(quotes)

            // Save this to disk
            let quoteString = String(data: quoteBytes, encoding: .utf8)
            try quoteString?.write(
                to: quotesPath,
                atomically: true,
                encoding: .utf8
            )

        } catch {
            print(error)
        }
    }

    // Load quotes.json from disk and into quotes array
    func load() {
        do {
            let data = try Data(contentsOf: quotesPath)
            let decoder = JSONDecoder()
            quotes = try decoder.decode(Array<Quote>.self, from: data)
        } catch {
            print(error)
            quotes = [
                Quote(
                    id: UUID(),
                    message: "Hope is the last thing you losed in the world",
                    author: "Karla"
                ),
                Quote(
                    id: UUID(),
                    message: "Genius is 100% inspiration",
                    author: "Karla"
                ),
                Quote(
                    id: UUID(),
                    message: "Don't let your dreams be dreams",
                    author: "Shia? 🤷🏻‍♂️"
                ),
                Quote(
                    id: UUID(),
                    message: "To be or not to be that is the question",
                    author: "Shakespeare"
                ),
                Quote(
                    id: UUID(),
                    message: "I mean what i said, and said what i meant",
                    author: "Dr. Seuss"
                )
            ]
        }

    }

}
