//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Bennett Lee on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = CalculatorViewModel()

    var body: some View {
        VStack {
            HStack {
                TextField("Number 1", text: $viewModel.numberOne)
                    .padding(6)
                    .background(Color.white)
                TextField("Number 2", text: $viewModel.numberTwo)
                    .padding(6)
                    .background(Color.white)
            }
            Text("Result: \(viewModel.result)")
                .font(.title)

            Button("Add") {
                viewModel.add()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
        .padding()
        .background(Color.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
