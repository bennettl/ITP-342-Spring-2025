//
//  QuotesListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 2/24/25.
//

import SwiftUI

struct QuotesListPage: View {
    @State var viewModel = QuoteViewModel()

    var body: some View {
        List(viewModel.quotes) { quote in

            // This represents the view for a single row
            VStack (alignment: .leading) {
                Text(quote.message)

                Text(quote.author)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    QuotesListPage()
}
