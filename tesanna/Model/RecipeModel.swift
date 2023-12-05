//
//  Recipe.swift
//  tesanna
//
//  Created by Farah Alamri on 14/05/1445 AH.
//

import Foundation
import SwiftUI

    
struct RecipeModel: Identifiable{
    
    
        let id: Int
        var name: String
        var servingSize: Int
        let cuisine: String
        var resource: String
        var ingredients: [String]
        var cookingSteps: [String]
        var image: String
        var isFaved : Bool
        
    init(id: Int, name: String, servingSize: Int, cuisine: String, resource: String, ingredients: [String], cookingSteps: [String], image: String, isFaved: Bool) {
            self.id = id
            self.name = name
            self.servingSize = servingSize
            self.cuisine = cuisine
            self.resource = resource
            self.ingredients = ingredients
            self.cookingSteps = cookingSteps
            self.image = image
            self.isFaved = isFaved
        }


    
}


