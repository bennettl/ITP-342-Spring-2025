//
//  MyTextField.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 2/3/25.
//

import SwiftUI

struct MyTextField: View {
    @State var name = ""
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
            TextField("Name", text: $name)
        }
    }
}

#Preview {
    MyTextField()
}
