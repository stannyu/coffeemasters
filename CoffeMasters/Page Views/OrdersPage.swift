//
//  OrderPage.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 08/10/2022.
//

import SwiftUI

struct OrdersPage: View {
    
    @State var name: String = ""
    @State var phone: String = ""
    
    // populates injected global (i.e. env) objects to have access within this file
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationView {
            if cartManager.products.count == 0 {
                Text("Your order is empty")
                    .navigationTitle("Your Order")
            } else {
                List {
                    Section("ITEMS") {
                        ForEach(cartManager.products, id:\.0.id) { item in
                            OrderItem()
                        }
                    }.listRowBackground(Color("Background"))
                    
                    Section("YOUR DETAILS") {
                        VStack {
                            TextField("Your Name", text: $name)
                                .textFieldStyle(.roundedBorder)
                            Spacer().frame(height: 20)
                            TextField("Your Phone #", text: $phone)
                                .keyboardType(.phonePad)
                                .textFieldStyle(.roundedBorder)
                        }.padding(.top)
                            .padding(.bottom)
                    }.listRowBackground(Color("Background"))
                    
                    Section() {
                        HStack {
                            Spacer()
                            Text("Total")
                            Spacer()
//                            Text("$ \(cartManager.total(), specifier: "%.2f")")
//                                .bold()
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                    
                    Section {
                        HStack {
                            Spacer()
                            Button("Place Order") {
                                //TODO: Validation
//                                orderConfirmed = true
                            }
                            .padding()
                            .frame(width: 250.0)
                            .background(Color("Alternative2"))
                            .foregroundColor(Color.black)
                            .cornerRadius(25)
                            
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                }
                .listSectionSeparatorTint(Color("AccentColor"))
                .listStyle(.insetGrouped)
                .navigationTitle("Your Order")
//                .alert("Order", isPresented: $orderConfirmed, actions: {
//                    Button("OK", role: .cancel) {
//                        //TODO: send order
//                        orderConfirmed = false
//                        cartManager.clear()
//                    }
//                }, message: {
//                    Text("Your order is being prepared.")
//                        .font(.title)
//                })
            }
        }
    }
}

struct OrdersPage_Previews: PreviewProvider {
    static var previews: some View {
        OrdersPage()
            .environmentObject(CartManager())
    }
}