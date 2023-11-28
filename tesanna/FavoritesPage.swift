//
//  FavoritesPage.swift
//  tesanna
//
//  Created by Farah Alamri on 09/05/1445 AH.
//

import SwiftUI

struct FavoritesPage: View {
    var body: some View {
        List{
            //get details from recipe object
            createRecipeView(recipeName: "بيتزا مارقريتا", recipeCuisine: "إيطالي", recipeImage: "MargaritaPizza")
            
        }.padding().background(Color("background")).navigationTitle(Text("المفضلة"))
        
    }
}

//------------------------
//functions
func createRecipeView(recipeName: String, recipeCuisine: String, recipeImage: String) -> some View{
    return ZStack{
        
        RoundedRectangle(cornerRadius: 8).fill(Color(.systemBackground))
        Text(Image(systemName: "heart.fill")).font(.headline)
            .foregroundColor(Color("PrimaryYellow")).position(CGPoint(x: 25.0, y: 22.0))
        
        HStack {
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(recipeName)")
                    .font(.headline)
                Text("التصنيف: \(recipeCuisine)")
                    .font(.caption)
                    .padding(.top, -5.0)
            }.padding()
            Image("\(recipeImage)")
                .resizable()
                .frame(width: 152.0, height: 105.0).clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 0.0,
                    bottomLeading: 0.0,
                    bottomTrailing: 8.0,
                    topTrailing: 8.0
                ), style: .continuous))
        }//end of HStack
        
    }//end of ZStack
}//end of createRecipeView

#Preview {
    FavoritesPage()
}
