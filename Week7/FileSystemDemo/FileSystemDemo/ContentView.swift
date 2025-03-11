//
//  ContentView.swift
//  FileSystemDemo
//
//  Created by Bennett Lee on 2/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

//              /Users/bennettlee/Library/Developer/CoreSimulator/Devices/628E1B7F-E139-4C08-B4B3-7A6BCC64A795/data/Containers/Data/Application/06492446-1103-465F-907A-D9F1A8838FCA/Documents/my-file.txt
            let filePath = "\(documentDirectory)my-file.txt"

            print(documentDirectory)

            let msgString = "Text to save to a file"

            do {
                let fileUrl = URL(string: filePath)!
                try msgString.write(to: fileUrl, atomically: true, encoding: .utf8)
            } catch {
                print(error)
            }

        }
        .onDisappear {

        }
    }
}

#Preview {
    ContentView()
}
