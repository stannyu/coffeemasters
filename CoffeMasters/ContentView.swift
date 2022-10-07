//
//  ContentView.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            Text("Order Page")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Offers")
                }
            Text("Info Page")
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Offers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
