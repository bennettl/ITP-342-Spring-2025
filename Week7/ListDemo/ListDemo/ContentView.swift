//
//  ContentView.swift
//  ListDemo
//
//  Created by Bennett Lee on 2/24/25.
//

import SwiftUI

struct Ocean: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {

    @State var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]

    var body: some View {
        List($oceans, editActions: .delete) { $ocean in
            Text(ocean.name)
        }.refreshable {

        }.listStyle(.grouped)
    }
}

#Preview {
    ContentView()
}
