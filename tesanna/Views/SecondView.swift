//
//  SecondView.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 02/05/1445 AH.
//

import SwiftUI
struct SecondView: View {
    
    
    @StateObject var cuisineVM = CuisineViewModel()
    
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
            
            creatCuisinView()
        }
        .background(Color("background"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        
    }
    
    
    func creatCuisinView() -> some View {
        let cuisineList = cuisineVM.createList()
        return ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 1), spacing: 20) {
                ForEach(cuisineList) { cuisine in
                    NavigationLink(destination: cuisine.destinationView, label: {
                        ZStack(alignment: .bottomTrailing){
                            Image("\(cuisine.image)")
                                .resizable()
                                .frame(width: 336.7, height: 180)
                                .cornerRadius(10)
                            Image("yelloEffect")
                                .resizable()
                                .frame(width: 336.7, height: 180)
                                .cornerRadius(10)
                            Text("\(cuisine.name)")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(10)
                        }
                        .padding([.leading, .trailing], 10)
                        .padding(.top, 10)
                    })
                    
                }
            }
            .padding([.leading, .trailing], 30)
            .padding(.top, 10)
        }
        
        
        
        
    }
    
}
