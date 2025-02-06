//
//  ContentView.swift
//  EnvironmentDemo
//
//  Created by Bennett Lee on 2/5/25.
//

import SwiftUI

@Observable
class Counter {
    var count = 0
}

// ContentView (counter created) -> ParentView -> ChildView -> GrandChildView (counter used)

struct ContentView: View {
    @State var counter = Counter()

    var body: some View {
        ParentView(counter: counter)
            .environment(counter)
    }
}

struct ParentView : View {
    @Bindable var counter: Counter
    var body: some View {
        ChildView()
    }
}

struct ChildView: View {
    var body: some View {
        GrandChildView()
    }
}

struct GrandChildView : View {
    @Environment(Counter.self) var counter: Counter
    var body: some View {
        Text("Count is \(counter.count)")
    }
}

#Preview {
    ContentView()
}
