//
//  RecipeViewModel.swift
//  tesanna
//
//  Created by Farah Alamri on 15/05/1445 AH.
//

import Foundation
import SwiftUI
class RecipeViewModel {
    var showingFavs = false
    var recipesList = [
        RecipeModel(ID: 1, name: "بيتزا مارقريتا", servingSize: 4, cuisine: "إيطالي", resource: "", ingredients: [""], cookingSteps: [""], image: "MargaritaPizza", isFaved: false),
        RecipeModel(ID: 2, name: "ملوخية بالدجاج", servingSize: 3, cuisine: "عربي", resource: "", ingredients: [""], cookingSteps: [""], image: "MolokhiyaWithChicken", isFaved: true),
        RecipeModel(ID: 3, name: "برياني بالدجاج", servingSize: 4, cuisine: "هندي", resource: "", ingredients: [""], cookingSteps: [""], image: "ChickenBiryani", isFaved: true)]
    
    var favRecipes = [RecipeModel]()

    
    func fetchFavorites() -> [RecipeModel]{
        for i in 0...2{
            if(recipesList[i].isFaved){
                favRecipes.append(recipesList[i])
            }
        }
       return favRecipes
    }
    
    func unsaveRecipe(index: Int){
        favRecipes.remove(at: index)
    }
    
    
}
