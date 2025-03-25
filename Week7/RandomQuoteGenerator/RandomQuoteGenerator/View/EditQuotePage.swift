//
//  NewQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 3/12/25.
//

import SwiftUI

struct EditQuotePage: View {
    @Environment(\.dismiss) private var dismiss

    @Environment(QuoteViewModel.self) var viewModel

    @State var author = "Author test"
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
                let newQuote = Quote(
                    message: message,
                    author: author
                )
                viewModel.append(quote: newQuote)
                dismiss()
            }
            .disabled(
                message.isEmpty || author.isEmpty
            )
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
