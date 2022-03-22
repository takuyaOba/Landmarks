//
//  Landmark.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/22.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI
 
struct Landmark: Hashable, Codable{
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    enum Category: String, CaseIterable, Hashable, Codable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
 
extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable{
    var latitude: Double
    var longitude: Double
}
