//
//  ImageDemo.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 2/3/25.
//

import SwiftUI

struct ImageDemo: View {
    var body: some View {
        Image("puppy")
            .resizable()
            .aspectRatio(contentMode: .fit)

    }
}

#Preview {
    ImageDemo()
}
