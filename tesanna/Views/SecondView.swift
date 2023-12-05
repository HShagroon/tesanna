//
//  SecondView.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 02/05/1445 AH.
//

import SwiftUI
struct SecondView: View {
    var imageInfo: [(imageName: String, labelText: String)] = [
        ("image1", "إيطالي"),
        ("image2", "هندي"),
        ("image3", "آسيوي"),
        ("image4", "عربي"),
        ("image5","وصفة عشوائية")
    ]
    
    var body: some View {
       
            VStack(alignment: .leading) { // Align contents to the leading edge
                NavigationLink(destination: FavoritesPage()) {
                    Image(systemName: "heart.square.fill")
                        .resizable()
                        .foregroundColor(Color("PrimaryYellow"))
                        .frame(width: 24, height: 24)
                        .padding(.leading, 20)
                }
                
                HStack {
                    Spacer()
                    Text("إيش نفسك تطبخ اليوم؟")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.trailing, 30)
                        .padding(.bottom, 20)
                }
             
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.2))
                    .padding(.top, 5)
                
                
                ScrollView {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 1), spacing: 20) {
                        ForEach(imageInfo, id: \.imageName) { info in
                            NavigationLink(destination: ImageDetailView()) {
                                ZStack(alignment: .bottomTrailing){
                                    Image(info.imageName)
                                        .resizable()
                                        .frame(width: 336.7, height: 180)
                                        .cornerRadius(10)
                                    Image("yelloEffect")
                                        .resizable()
                                        .frame(width: 336.7, height: 180)
                                        .cornerRadius(10)
                                    Text(info.labelText)
                                        .font(.system(size: 24))
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(10)
                                }
                                .padding([.leading, .trailing], 10)
                                .padding(.top, 10)
                            }
                            
                        }
                    }
                    .padding([.leading, .trailing], 30)
                    .padding(.top, 10)
                }
            }
            .background(Color("background"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            
    }
    
}
    
