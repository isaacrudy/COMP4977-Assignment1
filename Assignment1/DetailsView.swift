//
//  DetailsView.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import SwiftUI

struct DetailsView: View {
    var data: Zodiac
    var body: some View {
        Image(data.image)
        Text(data.name).font(.largeTitle)
        Text("Details")
        Text(data.description).padding()
    }
}

//#Preview {
//    DetailsView()
//}
