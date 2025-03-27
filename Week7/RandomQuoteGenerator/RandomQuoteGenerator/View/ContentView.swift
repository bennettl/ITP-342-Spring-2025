//
//  ContentView.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/24/25.
//

import SwiftUI

// VStack, HStack, ZStack

// Implicit return type when no return type is defined
func greet() {

}


struct ContentView: View {

    @State var viewModel = QuoteViewModel()

    var body: some View {
        // Tab that shows both RandomQuotePage and QuotesListPage
        TabView {
            RandomQuotePage()
                .tabItem {
                    Label("Random", systemImage: "message")
                }
            QuotesListPage()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
        .environment(viewModel)
    }
}

#Preview {
    ContentView()
}
