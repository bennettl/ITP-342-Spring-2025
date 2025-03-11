//
//  ContentView.swift
//  GestureDemo
//
//  Created by Bennett Lee on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    @State var scale = 1.0
    var body: some View {
//        Circle()
//            .fill(Color.teal)
//            .frame(width: 200)
//            .scaleEffect(scale)
//            .onLongPressGesture {
//                scale *= 1.5
//            }
        VStack {
            Text("Hello, World!")
                .onTapGesture {
                    print("Text tapped")
                }
        }
        .simultaneousGesture(
            TapGesture()
                .onEnded { _ in
                    print("VStack tapped")
                }
        )
    }
}

#Preview {
    ContentView()
}
