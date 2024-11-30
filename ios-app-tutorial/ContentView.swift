//
//  ContentView.swift
//  ios-app-tutorial
//
//  Created by Daniel on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = "Soccer"
    @State private var id = 1

    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash", "Soccer"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    var body: some View {
        VStack {
            VStack {
                Text("Why not try...")
                    .font(.largeTitle.bold())
            }
            Spacer()
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .overlay(Image(systemName: "figure.\(selected.lowercased())")
                    .font(.system(size: 144))
                    .foregroundColor(colors.randomElement())
                )
            Spacer()
            Text("\(selected)")
                .font(.title)
            Button("Change it!") {
                withAnimation(.easeInOut(duration: 0.3)) {
                    selected = activities.randomElement() ?? "Squash"
                    id += 1
                }
            }.buttonStyle(.borderedProminent)
        }
        .padding()
        .transition(.slide)
        .id(id)
    }
}

#Preview {
    ContentView()
}
