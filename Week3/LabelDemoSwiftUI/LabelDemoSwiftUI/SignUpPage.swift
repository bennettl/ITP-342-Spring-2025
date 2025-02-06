//
//  SignUpPage.swift
//  LabelDemoSwiftUI
//
//  Created by Bennett Lee on 2/3/25.
//

import SwiftUI

@Observable
class User {
    var firstName = ""
    var lastName = ""
}

struct SignUpPage: View {
    @State var user = User()

    var body: some View {
        VStack(spacing: 24) {
            TextField("First Name", text: $user.firstName)

            TextField("Last Name", text: $user.lastName)

            Button("Sign Up") {

            }
            .font(.largeTitle)
        }
        .padding(24)
    }
}

#Preview {
    SignUpPage()
}
