//
//  ContentView.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZodiacsView().tabItem {
                Image(systemName: "pawprint.circle")
                Text("Zodiacs")
            }
            CalculatorView().tabItem {
                Image(systemName: "equal.circle")
                Text("Calculator")
            }
            AboutView().tabItem {
                Image(systemName: "info.circle")
                Text("About Us")
            }
        }
    }
}

#Preview {
    ContentView()
}
