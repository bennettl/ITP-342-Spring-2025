//
//  ContentView.swift
//  PhotosPicker
//
//  Created by Bennett Lee on 4/7/25.
//

import SwiftUI
import PhotosUI


struct ContentView: View {
    @State var avatarItem: PhotosPickerItem? = nil

    // PhotosPickerItem -> Image
    @State var avatarImage: Image? = nil

    var body: some View {
        VStack {
            PhotosPicker("Select avatar", selection: $avatarItem, matching: .images)
            if let avatarImage {
               avatarImage
                   .resizable()
                   .scaledToFit()
                   .frame(width: 300, height: 300)
           }
        }
        .padding()
        .onChange(of: avatarItem) {
            Task {
               if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                   if let uiImage = UIImage(data: data) {
                       avatarImage = Image(uiImage: uiImage)
                       return
                   }
               }

               print("Failed")
           }
        }
    }
}

#Preview {
    ContentView()
}
