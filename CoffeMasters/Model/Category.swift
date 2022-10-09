//
//  Category.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
}
