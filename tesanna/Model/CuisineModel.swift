//
//  CuisineModel.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 20/05/1445 AH.
//


import Foundation
import SwiftUI

struct CuisineModel{
    
    let ID : Int
    var name :String
    var image: String
    
    init(ID: Int, name: String, image: String) {
        self.ID = ID
        self.name = name
        self.image = image
    }
    
    
}
