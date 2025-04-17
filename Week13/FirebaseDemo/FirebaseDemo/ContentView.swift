//
//  ContentView.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 4/9/25.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State var userViewModel = UserViewModel()
    var body: some View {
        VStack {
            // user is not logged in
            if userViewModel.currentUser == nil {
                SignupPage()
            } else {
                // User is logged in
                MessageListPage()
            }
        }
        .environment(userViewModel)
        .onAppear{
            userViewModel.currentUser = Auth.auth().currentUser
        }
    }
}

#Preview {
    ContentView()
}





//struct User : Codable {
//    @DocumentID var id: String?
//    let firstName: String
//    let lastName: String
//}

// // Read /users/john
// Firestore.firestore().collection("users").document("john")
//     .getDocument(completion: { (snap, error) in
//         // Early return - leave the moment a validation check hits
//         if let error {
//             print("there is an error \(error)")
//             return
//         }
//         print(snap?.data())
//     })
//
// Task {
//     do {
//         let snap = try await Firestore.firestore().collection("users").document("john").getDocument()
//         print(snap.data())
//     } catch {
//         print(error)
//     }
// }
//
//
//
//
//
// // /users/john
////            let usersCollectionReference = Firestore.firestore().collection("users")
////            let johnReference = usersCollectionReference.document("user6")
////
////            let kyle = User(firstName: "Kyle", lastName: "Smith")
////
////            usersCollectionReference.document("user1").delete()
//
////
////            do {
////                try usersCollectionReference.addDocument(from: kyle)
////            } catch {
////                print(error)
////            }
////            johnReference.setData([
////                "firstName": "Amy",
////            ])
////            johnReference.updateData([
////                "lastName": "Smith"
////            ])
