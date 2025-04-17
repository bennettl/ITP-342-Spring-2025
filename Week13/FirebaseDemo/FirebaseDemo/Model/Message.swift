//
//  Message.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/14/25.
//

import Foundation
import FirebaseFirestore

struct Message : Identifiable, Codable {
    @DocumentID var id: String?
    @ServerTimestamp var createdAt: Date?

    let text: String
}
