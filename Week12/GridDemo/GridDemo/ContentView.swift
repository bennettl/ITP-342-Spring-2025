//
//  ContentView.swift
//  GridDemo
//
//  Created by Bennett Lee on 4/2/25.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let colors = [
        Color.red,
        Color.blue,
        Color.green,
        Color.teal,
        Color.pink
    ]

    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(height: 60)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
