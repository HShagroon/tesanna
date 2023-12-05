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
                    ForEach(favoriteRecipes){ favoriteRecipe in
                        ZStack{
                            RoundedRectangle(cornerRadius: 8).fill(Color("cardColor"))
                            Button{
                                recipeVM.unsaveRecipe(index: 0)
                               // displayEmptyMsg()
                            } label:{
                                Image(systemName:"heart.fill").foregroundColor(Color("PrimaryYellow")).position(CGPoint(x: 24.0, y: 22.0))
                            }
                                
                                HStack {
                                    Spacer()
                                    
                                    VStack(alignment: .trailing) {
                                        Text("\(favoriteRecipe.name)")
                                            .font(.headline)
                                        Text("التصنيف: \(favoriteRecipe.cuisine)")
                                            .font(.caption)
                                    }.padding()
                                    Image("\(favoriteRecipe.image)")
                                        .resizable()
                                        .frame(width: 152.0, height: 105.0).clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                                            topLeading: 0.0,
                                            bottomLeading: 0.0,
                                            bottomTrailing: 8.0,
                                            topTrailing: 8.0
                                        ), style: .continuous))
                                }//end of HStack
                                
                            }//end of ZStack
                        }
                    }
                    
                
            
        }.padding().background(Color("background")).navigationTitle(Text("المفضلة")
            .font(.system(size: 24)))
            
        
    }
    
    public func displayEmptyMsg() -> some View{
        return VStack (alignment: .center){
            Spacer()
                .padding(.bottom, 250.0)
            Text("لم تقم بتفضيل أي وصفة بعد").font(.title3).padding()
            
        }
    }
}


#Preview {
    FavoritesPage()
}
