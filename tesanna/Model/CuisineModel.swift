//
//  CuisineModel.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 20/05/1445 AH.
//


import Foundation
import SwiftUI

struct CuisineModel: Identifiable{
    
    let id: Int
    var name :String
    var image: String
    let destinationView: () -> AnyView
    
    init(id: Int, name: String, image: String, destinationView: @escaping () -> AnyView) {
        self.id = id
        self.name = name
        self.image = image
        self.destinationView = destinationView
    }
    
    
}
