//
//  ContentView.swift
//  CoolBeans
//
//  Created by Adi Amoyal on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu = Menu()
    @StateObject var history = History()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
            .environmentObject(history)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
