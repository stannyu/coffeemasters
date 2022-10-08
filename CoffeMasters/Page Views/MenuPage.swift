//
//  MenuPage.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 7) { item in
                    NavigationLink {
                        DetailsPage()
                    } label: {
                        ProductItem(product: Product(id: 1, name: "Dummy Product", description: "Dummy product description", price: 4.24, image: ""))
                    }
                    /**
                     This is equivalent
                     NavigationLink(destination: DetailsPage()) {
                        ProductItem()
                     }
                     */
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
