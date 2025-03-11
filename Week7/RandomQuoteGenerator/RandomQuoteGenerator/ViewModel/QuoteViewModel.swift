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
    var quotes: [Quote]

    var randomQuote: Quote  {
        return quotes[randomIndex]
    }

    var randomIndex: Int = 0

    init() {
        quotes = [
            Quote(
                message: "Hope is the last thing you losed in the world",
                author: "Karla"
            ),
            Quote(
                message: "Genius is 100% inspiration",
                author: "Karla"
            ),
            Quote(
                message: "Don't let your dreams be dreams",
                author: "Shia? 🤷🏻‍♂️"
            ),
            Quote(
                message: "To be or not to be that is the question",
                author: "Shakespeare"
            ),
            Quote(
                message: "I mean what i said, and said what i meant",
                author: "Dr. Seuss"
            )
        ]
    }

    func generateRandomQuote() {
        var newIndex = Int.random(in: 0..<quotes.count)

        while newIndex == randomIndex {
            newIndex = Int.random(in: 0..<quotes.count)
        }

        randomIndex = newIndex
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


}
