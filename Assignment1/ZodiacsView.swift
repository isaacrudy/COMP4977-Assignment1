//
//  ZodiacsView.swift
//  Assignment1
//
//  Created by Isaac Rudy on 2023-09-29.
//

import SwiftUI

struct ZodiacsView: View {
    var body: some View {
        NavigationView {
            List(ZodiacData.data, id: \.name ) { item in
                HStack {
                    Image(systemName: item.image)
                    NavigationLink(item.name, destination: DetailsView(data: item))
                }.navigationTitle("Zodiacs")
            }
        }
    }
}

#Preview {
    ZodiacsView()
}
