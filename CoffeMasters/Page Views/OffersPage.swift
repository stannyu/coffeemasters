//
//  OffersPage.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 07/10/2022.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
