//
//  OrderItem.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager
    
    var item: (Product, Int)
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.callout)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
        .foregroundColor(Color("Secondary"))
        .padding()
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item:(Product(id: 1, name: "Dummy", description: "lorem10", price: 2.23, image: ""),3))
            .environmentObject(CartManager())
    }
}
