//
//  ContentView.swift
//  ios-app-tutorial
//
//  Created by Daniel on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Why not try...")
                    .font(.largeTitle.bold())
            }
            Circle()
                .fill(.red)
                .padding()
                .overlay(Image(systemName: "figure.archery")
                    .font(.system(size: 144))
                    .foregroundColor(.white)
                )
            Text("Japanese arrow")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
