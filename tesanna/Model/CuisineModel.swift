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
    
    
//    init(record: CKRecord) {
//        self.id = record.recordID
//        self.cid=record["cid"] as? Int ?? 0
//        self.name = record["name"] as? String ?? "N/A"
//        self.image = record["img"]  as? String ?? "N/A"
//        
//        }
    
}
