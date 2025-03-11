//
//  NavigationEmbededDestination.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 3/10/25.
//

import SwiftUI

struct NavigationEmbededDestination: View {
    var body: some View {
        NavigationStack{
            VStack {
//                NavigationLink {
//                    Rectangle()
//                        .fill(.blue)
//                } label: {
//                    Rectangle()
//                        .frame(width: 100, height: 100)
//                }
//
//                NavigationLink {
//                    Rectangle()
//                        .fill(.red)
//                } label: {
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 100, height: 100)
//                }

                NavigationLink("Go to Blue", destination: {
                    Rectangle()
                        .fill(.blue)
                })
                .scaleEffect(3.0)
                .padding(.bottom, 100)

                NavigationLink("Go to red", destination: {
                    Rectangle()
                        .fill(.red)
                })
                .scaleEffect(3.0)
            }
            

        }
    }
}

#Preview {
    NavigationEmbededDestination()
}
