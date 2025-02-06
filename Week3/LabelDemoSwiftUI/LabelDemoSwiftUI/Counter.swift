//
//  Counter.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 2/3/25.
//

import SwiftUI

struct Counter: View {
    @Binding var value: Int

    var body: some View {
        VStack {
            Text("Count : \(value)")
            Button("Increment") {
                value += 1
            }
            Button("Decrement") {
                value -= 1
            }
        }
        .font(.title)
    }
}

//#Preview {
//    Counter()
//}
