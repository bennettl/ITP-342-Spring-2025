//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Bennett Lee on 3/10/25.
//

import SwiftUI

// Animation
// Start 1.0
// End 11.0
// Duration 1 second

// Linear animation type
// Every 100 ms, increase scaleX by 3
// lastt 100ms scale 0.5

struct ContentView: View {
    @State var scaleX = 0.5
    @State var yOffset = 0.0

    var body: some View {
        Button {
//            scaleX = scaleX * 1.5

            withAnimation {
                yOffset = -600
            } completion: {
                yOffset = 1000
                withAnimation {
                    yOffset = 0
                }
            }

//            withAnimation(.linear(duration: 5)){
//                yOffset = -600
//            }
//
//            withAnimation(.linear.delay(5)) {
//                yOffset = 0
//            }


        } label: {
//            Rectangle()
//                .fill(.teal)
            Image(systemName: "heart.fill")
                .font(.system(size: 250))
                .foregroundStyle(.pink)
//                .frame(width: 200, height: 200)
                .scaleEffect(scaleX)
                .animation(.easeInOut, value: scaleX)
                .offset(y: yOffset)
        }
    }
}

#Preview {
    ContentView()
}
