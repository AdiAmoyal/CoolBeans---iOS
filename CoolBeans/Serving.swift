//
//  Serving.swift
//  CoolBeans
//
//  Created by Adi Amoyal on 08/02/2023.
//

import Foundation

struct Serving: Identifiable, Codable {
    var id: UUID
    let name: String
    let description: String
    let caffeine: Int
    let calories: Int
}
