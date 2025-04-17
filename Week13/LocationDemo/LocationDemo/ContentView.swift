//
//  ContentView.swift
//  LocationDemo
//
//  Created by Bennett Lee on 4/7/25.
//

import SwiftUI

struct ContentView: View {
    @State var locationViewModel = LocationViewModel()

    var body: some View {
        Button("Sync Location"){
            locationViewModel.requestAuthorization()
        }

    }
}

#Preview {
    ContentView()
}
