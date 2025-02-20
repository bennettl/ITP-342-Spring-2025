//
//  ContentView.swift
//  TestingDemo
//
//  Created by Bennett Lee on 2/19/25.
//

import SwiftUI

struct ContentView: View {
    let studentManager = StudentManager()
    var body: some View {
        Button("Mint John") {
            let john = Student(name: "John")
            studentManager.insert(student: john, at: 0)

        }
    }
}

#Preview {
    ContentView()
}
