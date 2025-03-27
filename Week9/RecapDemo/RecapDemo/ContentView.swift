//
//  ContentView.swift
//  RecapDemo
//
//  Created by Bennett Lee on 3/12/25.
//

import SwiftUI


struct User : Hashable, Identifiable {
    let id = UUID()
    let firstName: String
}

struct UserProfilePage : View {
    let user : User
    var body: some View {
        VStack {
            Text("User profile")
            Text("This is for user \(user.firstName)")
        }
    }
}

struct ContentView: View {

    @State var yOffset = 0.0

    var body: some View {
        NavigationStack {
            VStack {
                // Embeding Destination Views
                NavigationLink("Go to another page") {
                    Color.red
                }
                NavigationLink("User 1", value: User(firstName: "John"))

                NavigationLink("User 2",  value: User(firstName: "Amy"))
            }
            .navigationDestination(for: String.self) { number in
                Text("Page \(number)")
            }
            .navigationDestination(for: User.self) { user in
                UserProfilePage(user: user)
            }
        }
    }
}

#Preview {
    ContentView()
}
