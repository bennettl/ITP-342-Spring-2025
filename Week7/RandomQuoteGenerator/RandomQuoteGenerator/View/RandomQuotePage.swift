//
//  RandomQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 3/10/25.
//

import SwiftUI

struct RandomQuotePage: View {
    @Environment(QuoteViewModel.self) var viewModel

    var body: some View {
        VStack (spacing: 12) {
            Text(viewModel.randomQuote.message)
                .font(.title)
                .multilineTextAlignment(.center)
            Text(viewModel.randomQuote.author)
            Button("Generate"){
                viewModel.generateRandomQuote()
            }
            .padding(24)
            .border(.black, width: 1.0)
            .padding(.top, 24)
        }
        .padding()
    }
}

#Preview {
    RandomQuotePage()
        .environment(QuoteViewModel())
}
