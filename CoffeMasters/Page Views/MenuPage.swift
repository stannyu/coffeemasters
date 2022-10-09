//
//  MenuPage.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        if menuManager.menu.count == 0 {
            Text("No menu items just yet")
        } else {
            NavigationView {
                List {
                    ForEach(menuManager.menu) { category in
                        Text(category.name)
                        
                        ForEach(category.products) { product in
                            NavigationLink {
                                DetailsPage(product: product)
                            } label: {
                                ProductItem(product: product)
                            }
                            /**
                             This is equivalent
                             NavigationLink(destination: DetailsPage()) {
                             ProductItem()
                             }
                             */
                        }
                    }.listRowSeparator(.hidden, edges: .bottom)
                }.navigationTitle("Products")
            }
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}
