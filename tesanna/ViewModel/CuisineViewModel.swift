//
//  CuisineViewModel.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 20/05/1445 AH.
//

import Foundation
import SwiftUI

class CuisineViewModel{
    
        func createList()-> [CuisineModel]{
    
         var list = [CuisineModel]()
            for i in 1...5{
    
                list.append(getCuisineType(CuisineID:i))
    
        }
        return list
    }
}

func getCuisineType(CuisineID:Int)-> CuisineModel{
    
    var cuisine : CuisineModel
    
    switch CuisineID {
    case 1:
        cuisine = CuisineModel(id: 1, name: "إيطالي", image: "image1", destinationView: { AnyView(italian_swap()) })
    case 2:
        cuisine = CuisineModel(id: 2, name: "هندي", image: "image2", destinationView: { AnyView(indian_swap()) })
    case 3:
        cuisine = CuisineModel(id: 3, name: "آسيوي", image: "image3", destinationView: { AnyView(asian_swap()) })
    case 4:
        cuisine = CuisineModel(id: 4, name: "عربي", image: "image4", destinationView: { AnyView(arabic_swap()) })
    case 5:
        cuisine = CuisineModel(id: 5, name: "وصفه عشوائيه", image: "image5", destinationView: { AnyView(random_swap()) })
    default:
        cuisine = CuisineModel(id: 0, name: "", image: "", destinationView: { AnyView(EmptyView()) })
    }
    
   return cuisine
    
    
    
    
}
