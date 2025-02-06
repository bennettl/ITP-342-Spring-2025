//
//  ContentView.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 1/29/25.
//

import SwiftUI

struct LargeTitle: View {
    let value: String

    var body: some View {
        Text(value)
            .font(.largeTitle)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("One")
                .padding(20)
                .background(Color.red)

            Text("Two")
                .bold()
                .background(Color.blue)
                .padding(20)
//                .padding(.horizontal, 20)
//                .padding(.bottom, -20)
//                .padding(.vertical, 20)
//                .padding(.bottom, 50)
                .background(Color.red)

            Text("Long Number")
                .padding(20)
                .background(Color.red)
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
