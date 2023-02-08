//
//  FileManager-DocumentsDirectory.swift
//  CoolBeans
//
//  Created by Adi Amoyal on 08/02/2023.
//

import Foundation

extension FileManager {
    static var documentDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
