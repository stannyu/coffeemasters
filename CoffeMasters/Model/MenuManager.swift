//
//  MenuManager.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = [
        Category(name: "Hot Coffee", products: [
            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
            Product(id: 0, name: "", description: "", price: 1.25, image: ""),
        ])
    ]
}
