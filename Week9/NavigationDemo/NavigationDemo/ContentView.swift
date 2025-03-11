//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 3/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello")
                .navigationTitle("Hello there")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("New"){

                        }
                    }

                    ToolbarItem(placement: .principal) {
                        Rectangle()
                            .fill(.teal)
                            .frame(width: 50)
                            .padding(.top, 10)
                    }

                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Edit"){

                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
