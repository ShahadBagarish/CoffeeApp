//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Shahad Bagarish on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    let appTitle = "Coffee ☕️"
    var milk = true
    var quantity = 0
    var range = 1...10
    var iced: Bool
    var suger: Bool

    
    var body: some View {
        VStack{
            Text("Coffee ☕️")
                .padding()
                .font(.largeTitle)
            Toggle(isOn: .constant(true)) {
                Text("Include Milk 🥛")
            }
            Toggle(isOn: .constant(false)) {
                Text("Iced 🧊")
            }
            Toggle(isOn: .constant(true)) {
                Text("Spoon of Sugar 🍡 ")
            }
            Stepper(value: .constant(0), in: 1...10 ) {
                Text("Quantity: 0")
            }
            Button("Order") {}

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(iced: true, suger: true)
    }
}
