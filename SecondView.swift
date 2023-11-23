//
//  SecondView.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 02/05/1445 AH.
//


import SwiftUI
struct SecondView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 1), spacing: 20) {
                    ForEach(1..<5) { index in
                        NavigationLink(destination: ImageDetailView(imageNumber: index)) {
                            Image("image\(index)")
                               
                        }
                    }
                }
               
            }
          
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("إيش نفسك تطبخ اليوم؟")
          
        }
    }
}

struct ImageDetailView: View {
    let imageNumber: Int

    var body: some View {
        VStack {
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding(20)
        }
        .navigationTitle("Image \(imageNumber)")
    }
}
