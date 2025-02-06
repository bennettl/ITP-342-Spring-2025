//
//  ViewsDemo.swift
//  EnvironmentDemo
//
//  Created by Bennett Lee on 2/5/25.
//

import SwiftUI


enum MyColor {
    case red, green, blue
}

struct ColorDivider : View {
    let color: Color
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundStyle(color)
    }
}

struct ViewsDemo: View {
    @State var count = 0
    @State var isDarkMode = false

    @State var zipCode = ""

    @State var selection = MyColor.red
    @State var temperature = 50.0
    var body: some View {

        VStack() {

            ScrollView {
                LazyVStack {
                    ForEach(0..<1000) { _ in
                        Circle()
                            .foregroundStyle(Color.teal)
                            .frame(width: 100)
                    }

                }
            }

//            Rectangle()
//                .frame(width: 100, height: 400)
//                .overlay(
//                    Circle()
//                    .foregroundStyle(Color.teal)
//                    .frame(width: 200)
//                )


//            ZStack {
//                Circle()
//                    .foregroundStyle(Color.teal)
//                    .frame(width: 200)
//                Image("testImage")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//            }

//            VStack {
//                Spacer()
//                VStack {
//                    Text("Welcome")
//                    ColorDivider(color: .green)
//                    Text("To My App")
//                }
//                .font(.largeTitle)
//                Spacer()
//                HStack {
//                    Spacer()
//                    Circle()
//                        .foregroundStyle(Color.teal)
//                        .frame(width: 100)
//                        .padding(20)
//                }
//            }

//            Slider(value: $temperature, in: 1...100)
//                .tint(Color.brown)

//            Picker("Choose One", selection: $selection) {
//                Text("Red").tag(MyColor.red)
//                Text("Green").tag(MyColor.green)
//                Text("Blue").tag(MyColor.blue)
//            }
//            .pickerStyle(.menu)

//            TextField("Zip Code", text: $zipCode)
//                .keyboardType(.numberPad)

//            Toggle("Dark Mode?", isOn: $isDarkMode)
//                .tint(Color.pink)

//            Image("testImage")
//                .resizable()
//                .frame(width: 120, height: 120)
//                .clipShape(Circle())

//            Image(systemName: "message.badge.filled.fill")
//                .font(.largeTitle)
//                .foregroundStyle(.teal)

//            Stepper("Counter Title \(count)", value: $count, in: 1...100)

            //        Button {
            //
            //        } label: {
            //            Circle()
            //                .foregroundStyle(Color.teal)
            //                .frame(width: 200)
            //        }


            //        Button("Tap Me") {
            //
            //        }.font(.largeTitle)

            //        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            //            .lineLimit(6)
            //            .multilineTextAlignment(.leading)
            //            .font(.largeTitle)
            //            .foregroundStyle(Color.red)
        }
        .padding()
    }
}

#Preview {
    ViewsDemo()
}
