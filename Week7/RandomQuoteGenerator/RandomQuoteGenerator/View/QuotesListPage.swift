//
//  QuotesListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/24/25.
//



import SwiftUI

struct QuotesListPage: View {
    @Environment(QuoteViewModel.self) var viewModel

    var body: some View {
        NavigationStack {
            List(viewModel.quotes) { quote in
                NavigationLink(value: quote) {
                    // This represents the view for a single row
                    VStack (alignment: .leading) {
                        Text(quote.message)
                        Text(quote.author)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle(Text("My Quotes"))
            .toolbar{
                NavigationLink("New") {
                    EditQuotePage()
                }
            }
            .navigationDestination(for: Quote.self) { quote in
                EditQuotePage(quote: quote)
            }

        }
    }
}

#Preview {
    QuotesListPage()
        .environment(QuoteViewModel())
}
