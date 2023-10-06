//
//  CalculatorView.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack {
            Text("Calculator").font(.largeTitle)
            TextEditor(text: .constant("Please enter a Year")).frame(height: 50).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).padding()
        }
    }
}

#Preview {
    CalculatorView()
}
