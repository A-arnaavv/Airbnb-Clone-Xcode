//
//  ExploreView.swift
//  Airbnb Clone
//
//  Created by Arnav Aggarwal on 27/10/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
                ScrollView {
                    SearchAndFilterBar()
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) {listing in
                        Text("Lisitng Detail View...")
                }
            }
        }
    }

#Preview {
    ExploreView()
}
