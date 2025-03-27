//
//  EditQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 3/12/25.
//

import SwiftUI


// This page should support both new and edit quote
struct EditQuotePage: View {
    @Environment(\.dismiss) private var dismiss

    @Environment(QuoteViewModel.self) var viewModel

    var quote: Quote?

    @State var author = "author"

    @State var message = "mesage test"

    var body: some View {
        VStack (spacing: 12) {
            TextField("Author", text: $author)
                .padding()
                .background(Color.white)

            TextField("Message", text: $message)
                .padding()
                .background(Color.white)
        }
        .padding()
        .background(Color.gray)
        .toolbar {
            Button("Save"){

                // If there is an existing quote, get its position, and perform an update
                if let quote {
                    let index = viewModel.getIndex(for: quote)!
                    viewModel.update(
                        quote: Quote(id: quote.id, message: message, author: author),
                        at: index
                    )
                // This is a new quote, create
                } else {
                    let newQuote = Quote(
                        id: UUID(),
                        message: message,
                        author: author
                    )
                    viewModel.append(quote: newQuote)
                }

                dismiss()
            }
            .disabled(
                message.isEmpty || author.isEmpty
            )
        }
        .onAppear{
            guard let quote else {
                return
            }
            author = quote.author
            message = quote.message
        }
    }
}

#Preview {
    NavigationStack {
        EditQuotePage()
            .environment(QuoteViewModel())
    }
//    Text("random stuff")
}
