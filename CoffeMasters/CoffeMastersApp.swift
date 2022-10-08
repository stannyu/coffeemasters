//
//  CoffeMastersApp.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 04/10/2022.
//

import SwiftUI

@main
struct CoffeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
