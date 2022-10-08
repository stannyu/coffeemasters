//
//  CartManager.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [(Product, Int)] = []
}
