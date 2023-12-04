//
//  CuisineViewModel.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 20/05/1445 AH.
//

import Foundation

class Cuisine{
    
        func createList()-> [CuisineModel]{
    
         var list = [CuisineModel]()
            for i in 1...3{
    
                list.append(getCuisineType(CuisineID:i))
    
        }
        return list
    }
}

func getCuisineType(CuisineID:Int)-> CuisineModel{
    
    var cuisine : CuisineModel
    
    cuisine =  CuisineModel(ID: 0, name: "", image: "")
    
    if(CuisineID == 1) {
        cuisine = CuisineModel(ID: 1, name: "إيطالي", image: "image1")
    }
    if(CuisineID == 2) {
        cuisine = CuisineModel(ID: 2, name: "هندي", image: "image2")
    }
    if(CuisineID == 3) {
        cuisine = CuisineModel(ID: 3, name: "آسيوي", image: "image3")
    }
    if(CuisineID == 4) {
        cuisine = CuisineModel(ID: 4, name: "عربي", image: "image4")
    }
    if(CuisineID == 3) {
        cuisine = CuisineModel(ID: 5, name: "وصفه عشوائيه", image: "image5")
    }
    
   return cuisine
    
    
    
    
}
