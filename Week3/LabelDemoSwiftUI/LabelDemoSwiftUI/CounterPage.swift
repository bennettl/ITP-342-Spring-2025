//
//  CounterPage.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 2/3/25.
//

import SwiftUI

struct CounterPage: View {
    @State var counterOneValue = 0
    @State var counterTwoValue = 0

    var body: some View {
        VStack (spacing: 24) {
            Counter(value: $counterOneValue)

            Divider()

            Counter(value: $counterTwoValue)

            Button("Submit"){
                // value of both counters
                print("counter 1: \(counterOneValue) counter 2: \(counterTwoValue)")
            }
        }
    }
}

#Preview {
    CounterPage()
}
