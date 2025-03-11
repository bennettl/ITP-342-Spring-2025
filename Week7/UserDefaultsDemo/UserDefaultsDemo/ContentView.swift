//
//  ContentView.swift
//  UserDefaultsDemo
//
//  Created by Bennett Lee on 2/26/25.
//

import SwiftUI
import Observation

// kIsLightMode
// KeyIsLightMode
let KEY_IS_LIGHT_MODE = "isLightModeKey"

@Observable
class SettingsViewModel {
    var isLightMode = false {
        didSet {
            print("is light mode did set \(isLightMode)")
            UserDefaults.standard.setValue(
                isLightMode,
                forKey: KEY_IS_LIGHT_MODE
            )
        }
    }

    init(){
        isLightMode = UserDefaults.standard.bool(
            forKey: KEY_IS_LIGHT_MODE
        )
    }
}

struct ContentView: View {
    @State var viewModel = SettingsViewModel()
    var body: some View {
        VStack {
            Toggle("Light Mode", isOn: $viewModel.isLightMode)
        }
        .preferredColorScheme(
            viewModel.isLightMode ? .light : .dark
        )
        .padding()
    }
}

#Preview {
    ContentView()
}
