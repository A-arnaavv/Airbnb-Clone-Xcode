//
//  ListingImageCarouseView.swift
//  Airbnb Clone
//
//  Created by Arnav Aggarwal on 28/10/23.
//

import SwiftUI

struct ListingImageCarouseView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouseView()
}
