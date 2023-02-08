//
//  Menu.swift
//  CoolBeans
//
//  Created by Adi Amoyal on 08/02/2023.
//

import Foundation

class Menu: ObservableObject, Codable {
    let sections: [MenuSection]
    var milkOptions = [ConfigurationOption.none]
    var syrupOptions = [ConfigurationOption.none]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            self.sections = menuData.sections
            self.milkOptions.append(contentsOf: menuData.milkOptions)
            self.syrupOptions.append(contentsOf: menuData.syrupOptions)
        } catch {
            fatalError("menu.json is missing or currupt.")
        }
    }
}
