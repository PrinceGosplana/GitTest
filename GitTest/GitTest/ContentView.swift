//
//  ContentView.swift
//  GitTest
//
//  Created by OLEKSANDR ISAIEV on 26.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value = 75.0
    private let minValue = 0.0
    private let maxValue = 100.0
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: value) {
                Text("No Range")
            }
            Gauge(value: value, in: minValue...maxValue) {
                Text("Range")
            }
        }
    }
}

#Preview {
    ContentView()
}
