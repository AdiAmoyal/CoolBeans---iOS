//
//  Drink.swift
//  CoolBeans
//
//  Created by Adi Amoyal on 08/02/2023.
//

import Foundation

struct Drink: Identifiable, Codable {
    let id: UUID
    let name: String
    
    static let example = Drink(id: UUID(), name: "Example Drink")
}
