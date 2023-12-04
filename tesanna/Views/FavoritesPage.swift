//
//  FavoritesPage.swift
//  tesanna
//
//  Created by Farah Alamri on 09/05/1445 AH.
//

import SwiftUI

struct FavoritesPage: View {
    var recipeVM = RecipeViewModel()
    
    var body: some View {
        @State var favoriteRecipes = recipeVM.fetchFavorites()
        
        ScrollView{
            if (favoriteRecipes.isEmpty){
                displayEmptyMsg()

            }
            else{
                createRecipeView(recipe: favoriteRecipes[0])
            }
            
        }.padding().background(Color("background")).navigationTitle(Text("المفضلة")
            .font(.title))
            
        
    }
    
    func createRecipeView(recipe: RecipeModel) -> some View{
        return ZStack{
            RoundedRectangle(cornerRadius: 8).fill(Color("cardColor"))
            Image(systemName: "heart.fill")
                .foregroundColor(Color("PrimaryYellow")).position(CGPoint(x: 24.0, y: 22.0)).onTapGesture {
                    recipeVM.unsaveRecipe(index: 0)
                    displayEmptyMsg()
                }
            
            HStack {
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("\(recipe.name)")
                        .font(.headline)
                    Text("التصنيف: \(recipe.cuisine)")
                        .font(.caption)
                }.padding()
                Image("\(recipe.image)")
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
    
    func displayEmptyMsg() -> some View{
        return Text("لم تقم بتفضيل أي وصفة بعد").font(.title).multilineTextAlignment(.center).padding()
    }
}


#Preview {
    FavoritesPage()
}
