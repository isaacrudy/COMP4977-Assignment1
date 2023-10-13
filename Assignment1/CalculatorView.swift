//
//  CalculatorView.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import SwiftUI

struct CalculatorView: View {
    @State var year : String
    @State var err : String
    @State var image : String
    var animals : [String] = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"]
    
    var body: some View {
        VStack {
            Text("Calculator").font(.largeTitle)
            TextField("Year", text : $year).padding()
            
            Button(action: getYear) {
                Text("Get")
            }.buttonStyle(.bordered)
            
            Text(err).foregroundStyle(.red).padding()
            
            if(!image.isEmpty){
                VStack{
                    Text("\(image.capitalized)")
                    Image("\(image.capitalized)")
                }.padding()
            }

            
        }
    }
    
    func getYear() {
        
        guard let year = Int(year) else {
            err = "Enter a valid value"
            image = ""
            return
        }
        
        if(year <= 1900){
            err = "Make sure the value is above 1900"
            return
        }
        
        err = ""
        // Calculate the modulus with 12
        let modulus = year % 12
        
        image = animals[modulus]
        
        
    }
}

#Preview {
    CalculatorView(year: "", err: "", image: "")
}
