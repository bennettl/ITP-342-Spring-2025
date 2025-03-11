//
//  NavigationValue.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 3/10/25.
//

import SwiftUI

struct ColorPage : View{
    let color: Color

    var body: some View {
        Rectangle().fill(color)
    }
}

struct NavigationValue: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Go to red", value: Color.red)
                    .scaleEffect(2.0)
                    .padding(50)
                NavigationLink("Go to blue", value: Color.blue)
                    .scaleEffect(2.0)
            }
            .navigationDestination(for: Color.self) { color in
                ColorPage(color: color)
                    .navigationTitle("Color Page")
            }
            .navigationDestination(for: String.self) { value in
                if value == "red" {
                    Rectangle()
                        .fill(.red)
                        .navigationTitle("Red")
                } else if value == "blue"{
                    Rectangle()
                        .fill(.blue)
                        .navigationTitle("Blue")
                }
            }
        }
    }
}

#Preview {
    NavigationValue()
}
