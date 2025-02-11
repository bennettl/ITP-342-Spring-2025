//
//  ContentView.swift
//  MadLibsDemo
//
//  Created by Bennett Lee on 2/10/25.
//

import SwiftUI

enum Animal : String{
    case elephant = "Elephant"
    case pig = "Pig"
    case hippo = "Hippo"
    case duck = "Duck"
}

enum LessOrMoreSelection{
    case less, more
}

struct ContentView: View {
    @State var name = "Bennett"
    @State var city = "Vegas"
    @State var verb = "Dance"
    @State var age = "21"

    @State var lessOrMoreSelection = LessOrMoreSelection.more

    @State var animalSelection = Animal.pig

    @State var number = 42.0
    @State var numberOfPets = 2
    @State var happyEnding = false
    @State var isAlertPresented = false

    var fullStory: String {
        var story = "At the age of \(age), \(name) took a trip to \(city) with \(numberOfPets) pets in order to \(verb) with an \(animalSelection.rawValue). \(name) decided to buy \(Int(number))."

        if happyEnding {
            story += " And they live happily ever after"
        } else {
            story += " Things didn't turn out so well"
        }

        return story
    }

    var body: some View {
        VStack(spacing: 16) {
            Spacer()

            Image("madlibs")
                .resizable()
                .aspectRatio(contentMode: .fit)

            TextField("Name", text: $name)
                .padding(4)
                .background(Color.white)

            TextField("City", text: $city)
                .padding(4)
                .background(Color.white)

            TextField("Verb", text: $verb)
                .padding(4)
                .background(Color.white)

            TextField("Age", text: $age)
                .padding(4)
                .background(Color.white)
                .keyboardType(.numberPad)

            Picker("Less or More", selection: $lessOrMoreSelection) {
                Text("Less").tag(LessOrMoreSelection.less)
                Text("More").tag(LessOrMoreSelection.more)
            }
            .pickerStyle(.segmented)

            VStack (spacing: 16) {
                Picker("Animals", selection: $animalSelection) {
                    Text("Pig").tag(Animal.pig)
                    Text("Duck").tag(Animal.duck)
                    Text("Hippo").tag(Animal.hippo)
                    Text("Elephant").tag(Animal.elephant)
                }
                .pickerStyle(.segmented)

                HStack {
                    Text("\(Int(number))")
                    Slider(value: $number, in: 1...100)
                }
                Stepper("Pets \(numberOfPets)", value: $numberOfPets, in: 0...20)
                Toggle("Happy Ending?", isOn: $happyEnding)
            }
            .padding(12)
            .background(Color.white)
            .opacity(lessOrMoreSelection == .less ? 0.0 : 1.0)

            Button("Submit") {
                // print(fullStory)
                isAlertPresented = true
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)

            Spacer()

        }
        .padding()
        .background(Color.orange)
        .alert("The Story", isPresented: $isAlertPresented) {
            Button("Dismiss"){}
        } message: {
            Text(fullStory)
        }
    }
}

#Preview {
    ContentView()
}
