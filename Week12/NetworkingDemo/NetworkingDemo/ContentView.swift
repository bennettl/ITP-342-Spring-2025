//
//  ContentView.swift
//  NetworkingDemo
//
//  Created by Bennett Lee on 3/31/25.
//

import SwiftUI

struct ContentView: View {
    @State var imageUrl: URL? = nil

    var body: some View {
        NavigationStack {
            VStack {
                if let imageUrl {
                    AsyncImage(url: imageUrl) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                    }
                }
            }
            .toolbar(content: {
                Button("Refresh"){
                    Task {
                        await getRandomPhoto()
                    }
                }
            })
        }
    }

    // Call unsplash API to get a random photo
    private func getRandomPhoto() async {
        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var request = URLRequest(url: url)
        request.setValue("Client-ID PogBExtEuLXYbPJTMfUi3qT--DNRKluit8dBGbKlsMo", forHTTPHeaderField: "Authorization")

//        // Older technique, using a completion handler
//        URLSession.shared.dataTask(with: request, completionHandler: {
//            (data, response, error) in
//            // Handle response here
//        })

        do {
            let (data, response) = await try URLSession.shared.data(for: request)

            let decoder = JSONDecoder()
            let photo = try decoder.decode(Photo.self, from: data)

            imageUrl = URL(string: photo.urls.regular)

            print(data)
            print(photo)
            print(response)
        } catch {
            print(error)
        }

    }
}

#Preview {
    ContentView()
}
