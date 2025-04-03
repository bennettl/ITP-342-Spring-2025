//
//  ContentView.swift
//  UIKtDemo
//
//  Created by Bennett Lee on 4/2/25.
//

import SwiftUI
import UIKit

// 1. Get SwiftUI data into UIKit

struct MyTextField : UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.attributedPlaceholder = NSAttributedString(
            string: "UIKit Name",
            attributes: [
                .foregroundColor: UIColor.systemMint
            ]
        )

        textField.delegate = context.coordinator
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    class Coordinator : NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            self._text = text
        }

        // UITextField will invoke this method every single time the user has change characters in the textfield
        func textFieldDidChangeSelection(_ textField: UITextField) {
            print("\(textField.text)")
            text = textField.text ?? ""
        }

    }
}

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack {
            Spacer()
            Text(name)
                .font(.title)

            // Show SwiftUI TextField
            HStack {
                Text("Swift UI")
                TextField("Enter Name", text: $name)
                    .padding()
                    .background(Color.white)
                    .foregroundStyle(Color.black)
            }
            // UIKit TextField
            HStack {
                Text("UIKit")
                MyTextField(text: $name)
                    .frame(height: 24)
                    .padding()
                    .background(Color.white)
            }

            Spacer()

        }
        .padding()
        .background(Color.gray)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    ContentView()
}
