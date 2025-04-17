//
//  Date+.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/14/25.
//

import Foundation

extension Date {
    var timeAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}
