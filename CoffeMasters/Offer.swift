//
//  Offer.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 06/10/2022.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Image(systemName: "snowflake.circle.fill")
                .padding(0)
                .opacity(0.5)
            Text(title)
                .font(.title3).padding(0)
                .foregroundColor(Color(hue: 0.6, saturation: 0.599, brightness: 0.604))
            Text(description)
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "Title text", description: "Description text")
    }
}
