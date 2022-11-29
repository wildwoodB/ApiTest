//
//  Dish.swift
//  ApiTest
//
//  Created by Админ on 29.11.2022.
//

import Foundation

struct Dish: Decodable,Identifiable {
    
    let id: Int?
    let title, image: String?
    let instructions: String?
    //let extendedIngredients: [Ingridients]?
    
}
