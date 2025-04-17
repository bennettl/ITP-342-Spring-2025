//
//  SignupPage.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/16/25.
//

import SwiftUI

struct SignupPage: View {
    @Environment(UserViewModel.self) var userViewModel

    @State var email = "bennettl@usc.edu"
    @State var password = "Testing1!"

    var body: some View {
        VStack {
            TextField("Email", text: $email)
            TextField("Password", text: $password)
            Button("Sign Up") {
                Task {
                    await userViewModel.signUp(with: email, password: password)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SignupPage()
}
