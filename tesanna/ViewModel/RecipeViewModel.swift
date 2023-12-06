//
//  RecipeViewModel.swift
//  tesanna
//
//  Created by Farah Alamri on 15/05/1445 AH.
//

import Foundation
class RecipeViewModel {
    
    var recipesList = [
        RecipeModel(id: 1, name: "بيتزا مارقريتا", servingSize: 4, cuisine: "إيطالي", resource: "", ingredients: [""], cookingSteps: [""], image: "MargaritaPizza", isFaved: false),
        RecipeModel(id: 2, name: "ملوخية بالدجاج", servingSize: 3, cuisine: "عربي", resource: "", ingredients: [""], cookingSteps: [""], image: "MolokhiyaWithChicken", isFaved: true),
        RecipeModel(id: 3, name: "برياني بالدجاج", servingSize: 4, cuisine: "هندي", resource: "", ingredients: [""], cookingSteps: [""], image: "ChickenBiryani", isFaved: false)]
    
    var favRecipes = [RecipeModel]()

    
    func fetchFavorites() -> [RecipeModel]{
        for i in 0...(recipesList.count - 1){
            if(recipesList[i].isFaved){
                favRecipes.append(recipesList[i])
            }
        }
       return favRecipes
    }
    
    func unsaveRecipe(index: Int){
        favRecipes.remove(at: index)
        
    }
    
    func findRecipe(recipeId: Int) -> RecipeModel{
        var recipe = RecipeModel(id: 0, name:  "", servingSize: 0, cuisine: "", resource: "", ingredients: [""], cookingSteps: [""], image: "", isFaved: false)
        for i in 0...(recipesList.count - 1){
            if (recipesList[i].id == recipeId){
                recipe = recipesList[i]
            }
        }
        return recipe
    }
    
}
