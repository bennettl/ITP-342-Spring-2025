//
//  Quote.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/24/25.
//

import Foundation

struct Quote : Identifiable, Hashable, Codable {
    // Field level initialization
    let id: UUID // Int / UUID (Universally unique identifiers)
    let message: String
    let author: String
}
