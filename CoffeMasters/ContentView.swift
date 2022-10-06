//
//  ContentView.swift
//  CoffeMasters
//
//  Created by Stas Yudzitski on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let textVar = "Some Text"
        VStack {
            Image(systemName: "cloud.snow")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(textVar) Stas!")
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("Something to the console")
            }
            .buttonStyle(.bordered)
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Winter is coming...")
                    .font(.title2)
                    .foregroundColor(Color.purple)
                    .border(.gray)
                    .padding(30)
                    .background(Color.yellow)
                    .italic()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
