//
//  Product.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import Foundation

struct Product {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
