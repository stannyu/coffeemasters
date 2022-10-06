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
            Text(title)
                .font(.title)
                .padding()
                .foregroundColor(Color(hue: 0.6, saturation: 0.599, brightness: 0.604))
                .background(Color("CardBackground"))
            Text(description)
                .foregroundColor(Color(hue: 0.6, saturation: 0.599, brightness: 0.604))
                .padding()
                .background(Color("CardBackground"))

        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "Title text", description: "Description text")
    }
}
