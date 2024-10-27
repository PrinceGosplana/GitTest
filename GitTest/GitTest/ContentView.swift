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
    
    @State private var username = ""
    @State private var password = ""
    let gradient = Gradient(colors: [.blue, .yellow, .orange, .red])
    
    var body: some View {
        VStack(spacing: 30.0) {
            Gauge(value: value, in: minValue...maxValue) {
                Label("Range", systemImage: "arrow.left.and.right")
            } currentValueLabel: {
                Text(value, format: .number)
            } minimumValueLabel: {
                Text(minValue, format: .number)
            } maximumValueLabel: {
                Text(maxValue, format: .number)
            }
            .tint(gradient) // Doesn't affect labels
            
            Gauge(value: value, in: minValue...maxValue) {
                Text("Color")
            }
            .gaugeStyle(.accessoryCircular)
            .scaleEffect(3)
            .tint(gradient)
            .frame(height: 220)
            
            GroupBox {
                Text("Login")
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            }
            
            GroupBox {
                TextField("New Password", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("New Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            } label: {
                Text("Reset Password")
                    .font(.largeTitle.width(.compressed).weight(.heavy))
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
