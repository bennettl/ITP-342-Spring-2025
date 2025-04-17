//
//  MessageListPage.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/16/25.
//

import SwiftUI
import FirebaseFirestore

struct MessageListPage: View {
    @Environment(UserViewModel.self) var userViewModel

    @State var text = ""

    @FirestoreQuery(
        collectionPath:"messages",
        predicates: [
            .orderBy("createdAt", false)
//            .arrayContains("userIds", "8V4va1d8EkR1IueZG6Gs3VMCrdk1")
        ]
    ) var messages: [Message]

    // Date -> is human readable
    var body: some View {
        NavigationStack {
            VStack {
                List (messages) { message in
                    VStack(alignment: .leading) {
                        Text(message.text)
                        Text(message.createdAt?.timeAgo ?? "")
                            .font(.subheadline)
                    }
                }
                HStack{
                    TextField("Say something...", text: $text)
                    Button("Send"){
                        do {
                            // Create a message, and write it to firebase
                            let message = Message(text: text)
                            try Firestore.firestore()
                                .collection("messages")
                                .addDocument(from: message)

                            text = ""
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            .padding()
            .padding(.bottom, 24)
            .toolbar {
                Button("Sign Out") {
                    // call our user view model to sign out
                    userViewModel.signOut()
                }
            }
        }
    }
}

#Preview {
    MessageListPage()
}
